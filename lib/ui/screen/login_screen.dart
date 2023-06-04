import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/commont_text_field.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'Name',
                validator: (String? value) {
                  const Text("Please Enter Name");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'Email',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),

            CommonElevatedButton(
              title: 'LOGIN',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
