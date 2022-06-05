// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screen/auth_screen.dart';
import 'screen/dicition_screen.dart';
import 'screen/onbordingpage_screen.dart';
import 'screen/spalash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => SpalashScreen(),
         OnBordingPageScreen.routeName: (ctx) => OnBordingPageScreen(),
         DicitionScreen.routeName: (ctx) => DicitionScreen(),
         AuthScreen.routeName: (ctx) => AuthScreen(),
      },
    );
  }
}