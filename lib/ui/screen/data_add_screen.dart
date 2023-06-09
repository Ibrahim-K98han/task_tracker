import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widgets/commont_text_field.dart';
import '../widgets/custom_text_field.dart';

class DataAddScreen extends StatelessWidget {
  const DataAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue.shade100,
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 4, right: 4),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.asset(
                        'assets/images/logoo.png',
                        width: double.infinity,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Add New Entry',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 32),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: '',
                validator: (String? value) {
                  const Text("Please Enter Email");
                },
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32, right: 16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(),
                ),
                onPressed: () {},
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.black),
                )),
          ),
        )
      ],
    ));
  }
}
