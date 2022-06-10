// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../untils/colors.dart';
import 'dicition_screen.dart';

class OnBordingPageScreen extends StatelessWidget {
  static const routeName = '/onbording-page';

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: appColor().btn2dColor,
        activeColor: appColor().cardColor,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Make your dream careear with job',
              body: 'Create a unice emotonal story thad describes better than words',
              image: Image.asset("assets/onBordingPageImage/ebook.png"),
            ),
            PageViewModel(
              title: 'Make interview process more easier',
              body: 'Create a unice emotonal story thad describes better than words',
              image: Image.asset("assets/onBordingPageImage/readingbook.png")
            ),
          ],
          done: Text('NEXT', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {
            Navigator.of(context).pushReplacementNamed(DicitionScreen.routeName);
          },
          showSkipButton: true,
          skip: Text('SKIP'),
          dotsDecorator: getDotDecoration(),
          next: Icon(Icons.arrow_forward),
          globalBackgroundColor: Colors.white,
        ),
      );
}
