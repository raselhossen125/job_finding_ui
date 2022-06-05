// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  Color cardColor;
  Color btnColor;
  Color titleColor;
  String title;
  // Icon icon;
  // Color iconColor;
  // Function btnFunction;

  BackBtn({
    required this.cardColor,
    required this.btnColor,
    required this.titleColor,
    required this.title,
    // required this.icon,
    // required this.iconColor,
    // required this.btnFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 5,
          color: cardColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: btnColor,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: titleColor),
        ),
        // Spacer(),
        // IconButton(
        //   onPressed: () {
        //     btnFunction;
        //   },
        //   icon: icon,
        //   color: iconColor,
        // ),
      ],
    );
  }
}
