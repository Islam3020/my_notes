import 'package:flutter/material.dart';
import 'package:my_notes/views/notes_view.dart';

void main() {
  runApp(const MyNotes());
}
class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:const NotesView(),
      
    );
  }
}