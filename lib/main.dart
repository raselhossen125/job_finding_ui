// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/work_data.dart';
import 'screen/auth_screen.dart';
import 'screen/dicition_screen.dart';
import 'screen/home_screen.dart';
import 'screen/onbordingpage_screen.dart';
import 'screen/spalash_screen.dart';
import 'screen/showBottomNav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Work()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => ShowBottomNavScreen(),
         OnBordingPageScreen.routeName: (ctx) => OnBordingPageScreen(),
         DicitionScreen.routeName: (ctx) => DicitionScreen(),
         AuthScreen.routeName: (ctx) => AuthScreen(),
         ShowBottomNavScreen.routeName: (ctx) => ShowBottomNavScreen(),
      },
    ),
    );
  }
}
