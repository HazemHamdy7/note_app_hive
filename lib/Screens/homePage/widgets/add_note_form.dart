import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app_hive/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app_hive/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
              maxLines: 1,
              onSaved: (value) {
                title = value;
              },
              hint: 'Title'),
          const SizedBox(height: 16),
          CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hint: 'Content',
              maxLines: 5),
          const SizedBox(height: 32),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) => CustomButton(
              isLoading: state is AddNotesLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var currenDate = DateTime.now();
                  var formattedCurrentDate =
                      DateFormat('dd-mm-yyyy').format(currenDate);
                  var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      data: formattedCurrentDate,
                      color: Colors.green.shade100.value);
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
