import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
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
                    decoration: BoxDecoration(
                        //border: Border.all(color: primaryColor, width: 2),
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 550,
                      child: ListView.builder(
                          padding: const EdgeInsets.all(4),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                  height: 80,
                                  decoration:
                                      BoxDecoration(
                                          color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)
                                      ),

                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.person),
                                            Text('Ibrhaim Khan')
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.call),
                                            Text('017500000000')
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
