import 'package:flutter/material.dart';
import 'package:my_notes/views/my_widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: const Icon(Icons.add),),
      body: const NotesViewBody(),
      
    );
  }
}
