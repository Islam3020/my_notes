import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color:const Color(0xffFFcc80),
        borderRadius: BorderRadiusDirectional.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black,fontSize: 26),
            ),
            subtitle:  Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("build your career with Islam Ali",
                  style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 20)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text("20/1/2025",style: TextStyle(color: Colors.black.withOpacity(.4))),
          )
        ],
      ),
    );
  }
}
