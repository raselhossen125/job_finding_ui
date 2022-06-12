import 'package:flutter/material.dart';

class PopularDesign with ChangeNotifier{
  final String id;
  final String imageUrl;
  final double salary;
  final String title;
  final String location;
  final String time;
  final String value;

  PopularDesign({
    required this.id,
    required this.imageUrl,
    required this.salary,
    required this.title,
    required this.location,
    required this.time,
    required this.value,
  });
}