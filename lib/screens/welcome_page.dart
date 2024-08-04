import 'package:flutter/material.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/components/title_text.dart';
import 'package:travel_app/components/body_text.dart';
import 'package:travel_app/others/app_color.dart';
import 'package:travel_app/others/assets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List<String> images = [
    Assets.welcome1,
    Assets.welcome2,
    Assets.welcome3,
  ];
  final List<String> titles = [
    "Life is short and the world is wide",
    "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
    "People don’t take trips, trips take people",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(bottom: 12),
                width: double.maxFinite,
                height: 470,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.fitWidth)),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (indexScroll) {
                    return Container(
                      height: 8,
                      width: indexScroll == index ? 22 : 10,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: indexScroll == index
                              ? AppColor.maincolor
                              : AppColor.maincolor.withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    );
                  })),
              Container(
                width: 400,
                margin: const EdgeInsets.all(12),
                alignment: const Alignment(0, 0),
                child: TitleText(text: titles[index], size: 27),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                margin: const EdgeInsets.all(12),
                alignment: const Alignment(0, 0),
                child: BodyText(
                    text:
                        "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world"),
              ),
              SizedBox(
                height: 30,
              ),
              Button(),
            ]),
          );
        },
      ),
    );
  }
}
