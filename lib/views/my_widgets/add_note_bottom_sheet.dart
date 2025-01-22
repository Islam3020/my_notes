
import 'package:flutter/material.dart';
import 'package:my_notes/costant.dart';
import 'package:my_notes/views/my_widgets/custom_button.dart';
import 'package:my_notes/views/my_widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:16),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 32,),
          CustomTextfield(hint: "title",),
          SizedBox(height: 16,),
          CustomTextfield(hint: "content",maxLines: 5,),
           SizedBox(height: 30,),
          CustomButton(),
           SizedBox(height: 16,)
          ],),
      ),
    );
  }
}
