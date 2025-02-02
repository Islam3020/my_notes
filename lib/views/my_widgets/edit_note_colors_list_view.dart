import 'package:flutter/material.dart';
import 'package:my_notes/costant.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/views/my_widgets/color_listview.dart';

class EditNoteColorsListView
 extends StatefulWidget {
  const EditNoteColorsListView
  ({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
   late int currentIndex;
   @override
  void initState() {
    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 80,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(onTap: (){

                currentIndex=index;
                widget.note.color=kColors[index].value;
                
                setState(() {
                  
                });
              },
                child: ColorItem(isActive: currentIndex==index,color:kColors[index])),
            );
          }),
    );
  }
}