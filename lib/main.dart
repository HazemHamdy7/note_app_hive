import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_hive/Screens/homePage/Home/notes-view.dart';
import 'core/constant.dart';
import 'cubits/notes_cubit/notes_cubit_cubit.dart';
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
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        home: const NotesApp(),
      ),
    );
  }
}
