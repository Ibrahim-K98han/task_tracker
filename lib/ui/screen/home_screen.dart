import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/ui/utils/app_colors.dart';

import 'login_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Card(
          elevation: 10,
          color: Colors.teal.shade100,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    Get.to(LoginScreen());
                  },
                  child: LoginPageCommonBtn(title: 'Login',),),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: LoginPageCommonBtn(title: 'Registration',),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPageCommonBtn extends StatelessWidget {
  String? title;
   LoginPageCommonBtn({
    Key? key,
     this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: primaryColor),
        child: Center(
          child: Text(
            title.toString(),
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
