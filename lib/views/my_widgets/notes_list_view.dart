import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/views/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes/views/my_widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NoteCubit>(context).notes!;
        return ListView.builder(
          itemCount: notes.length,
          
          itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(),
          );
        });
      },
    );
  }
}
