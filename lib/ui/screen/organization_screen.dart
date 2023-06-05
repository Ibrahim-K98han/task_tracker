import 'package:flutter/material.dart';
import 'package:task_tracker/ui/utils/app_colors.dart';

class OrganizationScreen extends StatefulWidget {
  const OrganizationScreen({Key? key}) : super(key: key);

  @override
  State<OrganizationScreen> createState() => _OrganizationScreenState();
}

class _OrganizationScreenState extends State<OrganizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonOrganization(text: 'Your Organizations', onTap: () {}),
            CommonOrganization(text: 'Create New Organizations', onTap: () {}),
            CommonOrganization(text: 'Join an Organizations', onTap: () {}),
            CommonOrganization(text: 'Add to Your Organizations', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class CommonOrganization extends StatelessWidget {
  String? text;
  VoidCallback onTap;

  CommonOrganization({Key? key, this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 2),
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 80,
          child: Center(
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
