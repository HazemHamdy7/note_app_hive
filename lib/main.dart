import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_hive/Screens/homePage/Home/notes-view.dart';
import 'package:note_app_hive/cubits/add_note_cubit/add_notes_cubit.dart';
import 'core/constant.dart';
import 'models/note_model.dart';
import 'simpl_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObservr();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const NotesApp(),
    );
  }
}
