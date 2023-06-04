import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/ui/screen/splash_screen.dart';
import 'package:task_tracker/ui/state_management/bottom_navigation_bar_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: GetxBindings(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen());
  }
}
class GetxBindings extends Bindings {
  @override
  void dependencies() {
    Get.put( BottomNavigationBarController(),);
  }
}