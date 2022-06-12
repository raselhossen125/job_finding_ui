// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/work_data.dart';
import '../untils/colors.dart';

class WorkItemWidget extends StatelessWidget {
  final int index;

  WorkItemWidget(this.index);

  @override
  Widget build(context) {
    final data = Provider.of<Work>(context, listen: false);

    return Card(
      color: appColor().greyColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          data.workData[index],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
