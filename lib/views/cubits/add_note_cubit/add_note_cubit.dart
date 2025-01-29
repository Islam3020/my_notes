
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:my_notes/costant.dart';
import 'package:my_notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  

  addNote(NoteModel note)async
  {
    emit(AddNoteLoading());

   try {
  var noteBox =Hive.box<NoteModel>(kNotesBox);
  
  await noteBox.add(note);
  emit(AddNoteSuccess());
} on Exception catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }

  
}
