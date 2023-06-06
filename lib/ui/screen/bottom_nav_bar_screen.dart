import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/ui/screen/third_screen.dart';

import '../state_management/bottom_navigation_bar_controller.dart';
import '../utils/app_colors.dart';
import 'forth_screen.dart';
import 'home_screen.dart';
import 'second_screen.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({Key? key}) : super(key: key);

  final List<Widget> _screen = const [
    HomeScreen(),
    SecondScreen(),
    ThirdScreen(),
    ForthScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigationBarController>(builder: (controller) {
        return _screen[controller.selectIndex];
      }),
      bottomNavigationBar:
          GetBuilder<BottomNavigationBarController>(builder: (controller) {
        return BottomNavigationBar(
          onTap: (value) {
            controller.changeIndex(value);
          },
          elevation: 4,
          selectedItemColor: primaryColor,
          unselectedItemColor: softGreyColor,
          currentIndex: controller.selectIndex,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
              ),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Company',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
          ],
        );
      }),
    );
  }
}
