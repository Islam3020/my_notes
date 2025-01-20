
import 'package:flutter/material.dart';
import 'package:my_notes/views/my_widgets/Custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [CustomAppBar()],),
    );
  }
}
