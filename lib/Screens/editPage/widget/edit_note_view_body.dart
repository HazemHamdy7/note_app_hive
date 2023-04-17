import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_hive/Screens/homePage/widgets/custom_app_bar.dart';
import 'package:note_app_hive/cubits/notes_cubit/notes_cubit_cubit.dart';

import '../../../core/constant.dart';
import '../../../models/note_model.dart';
import '../../colors/color_list_view.dart';
import '../../homePage/widgets/custom_text_feild.dart';
import 'edit_note_color_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        const SizedBox(height: 50),
        CustomAppBar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = content ?? widget.note.subTitle;
            widget.note.save();
            //! to refresh widget
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          title: 'Edit Note',
          icon: Icons.check,
        ),
        CustomTextField(
          onChanged: (value) {
            title = value;
          },
          hint: widget.note.title,
          maxLines: 1,
        ),
        const SizedBox(height: 16),
        CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5),
        const SizedBox(height: 16),
        EditNoteColorsList(note: widget.note),
      ]),
    );
  }
}
