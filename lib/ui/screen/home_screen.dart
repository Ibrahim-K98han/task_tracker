import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Login Screen'),
      ),
      body: Center(
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
              padding: const EdgeInsets.only(top: 16),
              child: LoginPageCommonBtn(title: 'Registration',),
            )
          ],
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.teal),
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
