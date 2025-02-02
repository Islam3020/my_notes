import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/costant.dart';
import 'package:my_notes/views/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(radius: 38,backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    ):
      CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});
  
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override
  int currentIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 80,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(onTap: (){

                currentIndex=index;
                BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
                setState(() {
                  
                });
              },
                child: ColorItem(isActive: currentIndex==index,color:kColors[index])),
            );
          }),
    );
  }
}
