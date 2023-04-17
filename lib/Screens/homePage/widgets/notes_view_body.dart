import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_hive/Screens/homePage/widgets/custom_app_bar.dart';
import 'package:note_app_hive/Screens/homePage/widgets/notes%20_list_view.dart';
import 'package:note_app_hive/cubits/notes_cubit/notes_cubit_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          CustomAppBar(
            title: ' Notes',
            icon: Icons.search,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
