import 'package:flutter/material.dart';
import 'package:note_app_hive/Screens/editPage/widget/edit_note_view_body.dart';
import 'package:note_app_hive/Screens/homePage/Home/notes-view.dart';
import 'package:note_app_hive/Screens/homePage/widgets/notes_view_body.dart';

import 'Screens/editPage/view/edit_note_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        home: const EditNoteViewBody()
        //NotesApp(),
        );
  }
}
