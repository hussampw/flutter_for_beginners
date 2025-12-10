import 'package:flutter/material.dart';

class TextModren extends StatelessWidget {
  final String text;

  const TextModren({super.key , required this.text});


  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
        fontFamily: 'Modren',
        fontSize: 20,
      ),
    );
  }
}