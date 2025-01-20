import 'package:flutter/material.dart';

void main() {
  runApp(const MyNotes());
}
class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
      
    );
  }
}class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold();
  }
}