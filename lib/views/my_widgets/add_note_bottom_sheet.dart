
import 'package:flutter/material.dart';
import 'package:my_notes/views/my_widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:16),
      child: Column(children: [
        SizedBox(height: 32,),
        CustomTextfield(hint: "title",),
        SizedBox(height: 16,),
        CustomTextfield(hint: "content",maxLines: 5,)
        ],),
    );
  }
}