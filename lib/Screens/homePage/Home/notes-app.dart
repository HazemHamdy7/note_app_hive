import 'package:flutter/material.dart';
import 'package:note_app_hive/Screens/homePage/widgets/notes_view_body.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NotesViewBody(),
      ),
    );
  }
}
