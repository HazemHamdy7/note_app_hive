import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_hive/core/constant.dart';
import '../../models/note_model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color? color;
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
