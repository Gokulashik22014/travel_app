import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  double size;
  Color color;
  TitleText(
      {super.key,
      required this.text,
      this.size = 32,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: color, fontSize: size, fontWeight: FontWeight.bold),textAlign: TextAlign.justify,);
  }
}
