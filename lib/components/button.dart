import 'package:flutter/material.dart';
import 'package:travel_app/components/body_text.dart';
import 'package:travel_app/others/app_color.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child:Center(child:BodyText(text: "Get Started",color: AppColor.text_color,)),
      decoration: BoxDecoration(
          color: AppColor.maincolor,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
