import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/others/app_color.dart';
import 'package:travel_app/screens/nav_screens/bar_screen.dart';
import 'package:travel_app/screens/nav_screens/home_screen.dart';
import 'package:travel_app/screens/nav_screens/my_profile.dart';
import 'package:travel_app/screens/nav_screens/search_screen.dart';

class SelectedIcon extends StatelessWidget {
  IconData icon;
  SelectedIcon({super.key,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20),
        color: AppColor.maincolor,
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List screens = [HomeScreen(), SearchScreen(), BarScreen(), MyProfile()];
  // ontap function that changes the state
  void handleTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: handleTap,
          currentIndex: currentIndex,
          selectedItemColor: AppColor.white,
          unselectedItemColor: AppColor.grey,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                activeIcon: SelectedIcon(icon:Icons.home ,)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                activeIcon: SelectedIcon(icon:Icons.search)),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "Chart",
                activeIcon: SelectedIcon(icon:Icons.bar_chart)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded),
                label: "Profile",
                activeIcon: SelectedIcon(icon:Icons.person_2_rounded)),
          ]),
    );
  }
}
