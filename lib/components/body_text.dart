import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  double size;
  Color color;
  BodyText(
      {super.key,
      required this.text,
      this.size = 16,
      this.color = Colors.black38});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: color, fontSize: size),textAlign: TextAlign.justify,);
  }
}
