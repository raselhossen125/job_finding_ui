// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  Color cardColor;
  Color cardBtnColor;
  Icon cardBtnIcon;
  Color titleColor;
  String title;
  // Icon? icon;
  // Color? iconColor;
  // Function? btnFunction;

  BackBtn({
    required this.cardColor,
    required this.cardBtnColor,
    required this.cardBtnIcon,
    required this.titleColor,
    required this.title,
    // this.icon,
    // this.iconColor,
    // this.btnFunction,
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
            icon: cardBtnIcon,
            color: cardBtnColor,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title.toString(),
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: titleColor),
        ),
        // Spacer(),
        // IconButton(
        //   onPressed: () {
        //     btnFunction;
        //   },
        //   icon: icon!,
        //   color: iconColor,
        // ),
      ],
    );
  }
}
