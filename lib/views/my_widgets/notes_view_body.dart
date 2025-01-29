
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/views/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes/views/my_widgets/custom_app_bar.dart';

import 'package:my_notes/views/my_widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(height: 50,),
        CustomAppBar(icon: Icons.search,title: "Notes",),
         
        Expanded(child: NotesListView())

        ],),
    );
  }
}
