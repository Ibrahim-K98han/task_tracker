import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 2),
            ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Company Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Task List',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              child: ListTile(title: Text("Task List $index")));
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
