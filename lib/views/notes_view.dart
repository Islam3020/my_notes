import 'package:flutter/material.dart';
import 'package:my_notes/views/my_widgets/add_note_bottom_sheet.dart';
import 'package:my_notes/views/my_widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context, builder: (context){
            
            return const AddNoteBottomSheet();
          });
        },
        backgroundColor: Colors.cyanAccent,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
