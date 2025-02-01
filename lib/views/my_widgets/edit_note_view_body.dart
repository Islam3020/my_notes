import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/views/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes/views/my_widgets/custom_app_bar.dart';
import 'package:my_notes/views/my_widgets/custom_textfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title ,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(onPressed: () {
            widget.note.title=title ?? widget.note.title;
            widget.note.subtitle=content ?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            
          },
            title: "Edit Mode",
            icon: Icons.check,
          ),
          const SizedBox(height: 50,),
           CustomTextfield(onChanged: (value){
            title=value;
          },
            hint: "Title"),
          const SizedBox(height: 16,),
           CustomTextfield(onChanged: (value){content=value;},
            hint: 'content',maxLines: 5,),

        ],
      ),
    );
  }
}
