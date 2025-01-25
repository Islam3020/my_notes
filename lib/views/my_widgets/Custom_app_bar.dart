import 'package:flutter/material.dart';
import 'package:my_notes/views/my_widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.icon,required this.title});

 final String title;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(icon: icon)
      ],
    );
  }
}
