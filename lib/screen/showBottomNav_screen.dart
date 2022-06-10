// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../untils/colors.dart';

class ShowBottomNavScreen extends StatefulWidget {
  static const routeName = 'bottomNavBar';

  @override
  State<ShowBottomNavScreen> createState() => _ShowBottomNavScreenState();
}

class _ShowBottomNavScreenState extends State<ShowBottomNavScreen> {
  int index = 0;
  final screens = [
    HomeScreen(),
    Center(child: Text("Applicatons")),
    Center(child: Text("Message")),
    Center(child: Text("Me")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: appColor().cardColor,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        child: NavigationBar(
          height: 65,
          backgroundColor: appColor().bgColor,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.air), label: "Applications"),
            NavigationDestination(icon: Icon(Icons.message), label: "Message"),
            NavigationDestination(icon: Icon(Icons.people), label: "Me"),
          ],
        ),
      ),
    );
  }
}
