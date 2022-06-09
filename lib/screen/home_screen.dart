// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_finding_ui/untils/colors.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor().bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
