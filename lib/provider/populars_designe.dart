// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'popular_designe.dart';

class Populars with ChangeNotifier {
  List<PopularDesign> _items = [
    PopularDesign(
      id: '01',
      imageUrl: 'assets/popularDesign/me.jpg',
      salary: 10,
      title: 'UX Designer',
      location: 'Dhaka, Bangladesh',
      time: 'Full Time',
      value: 'value',
    ),
    PopularDesign(
      id: '02',
      imageUrl: 'assets/popularDesign/me.jpg',
      salary: 10000,
      title: 'UX Designer',
      location: 'Dhaka, Bangladesh',
      time: 'Full Time',
      value: 'value',
    ),
    PopularDesign(
      id: '03',
      imageUrl: 'assets/popularDesign/me.jpg',
      salary: 10000,
      title: 'UX Designer',
      location: 'Dhaka, Bangladesh',
      time: 'Full Time',
      value: 'value',
    ),
    PopularDesign(
      id: '04',
      imageUrl: 'assets/popularDesign/me.jpg',
      salary: 10000,
      title: 'UX Designer',
      location: 'Dhaka, Bangladesh',
      time: 'Full Time',
      value: 'value',
    ),
    PopularDesign(
      id: '05',
      imageUrl: 'assets/popularDesign/me.jpg',
      salary: 10000,
      title: 'UD Designer',
      location: 'Dhaka, Bangladesh',
      time: 'Full Time',
      value: 'value',
    ),
  ];

  List<PopularDesign> get items {
    return [..._items];
  }
}
