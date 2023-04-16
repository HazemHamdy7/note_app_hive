import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_hive/Screens/homePage/widgets/notes_view_body.dart';
import 'package:note_app_hive/cubits/notes_cubit/notes_cubit_cubit.dart';

import '../widgets/add_bottom_model_sheet.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => NotesCubit(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  });
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesViewBody(),
        ),
      ),
    );
  }
}
