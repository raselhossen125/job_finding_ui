// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../data/work_data.dart';
import '../untils/colors.dart';

class WorkItemWidget extends StatelessWidget {
  const WorkItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: workData.length,
      itemBuilder: (context, index) {
        return Card(
          color: appColor().greyColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              workData[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
