import 'package:flutter/material.dart';
import 'package:my_notes/views/my_widgets/Custom_app_bar.dart';
import 'package:my_notes/views/my_widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Mode",
            icon: Icons.check,
          ),
          SizedBox(height: 50,),
          CustomTextfield(hint: "Title"),
          SizedBox(height: 16,),
          CustomTextfield(hint: 'content',maxLines: 5,),

        ],
      ),
    );
  }
}
