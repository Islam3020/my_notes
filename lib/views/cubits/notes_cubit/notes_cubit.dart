
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:my_notes/costant.dart';
import 'package:my_notes/models/note_model.dart';

part 'notes_state.dart';

class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(NoteInitial());
 
 List<NoteModel>?notes;
  fetchAllNotes()async{
    
  
   
  var noteBox =Hive.box<NoteModel>(kNotesBox);
  
  notes= noteBox.values.toList();
  

  }
}
