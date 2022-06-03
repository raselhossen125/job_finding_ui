// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:job_finding_ui/screen/home.dart';

class OnBordingPageScreen extends StatelessWidget {
  static const routeName = '/onbording-page';

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.orange,
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
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only one.',
              image: Image.asset("assets/onBordingPageImage/ebook.png"),
            ),
            PageViewModel(
              title: 'Featured Books',
              body: 'Available right at your fingerprints',
              image: Image.asset("assets/onBordingPageImage/readingbook.png")
            ),
            PageViewModel(
              title: 'Simple UI',
              body: 'For enhanced reading experience',
              image: Image.asset("assets/onBordingPageImage/manthumbs.png"),
            ),
            PageViewModel(
              title: 'Today a reader, tomorrow a leader',
              body: 'Start your journey',
              image: Image.asset("assets/onBordingPageImage/learn.png"),
            ),
          ],
          done: Text('NEXT', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {Home();},
          showSkipButton: true,
          skip: Text('SKIP'),
          dotsDecorator: getDotDecoration(),
          next: Icon(Icons.arrow_forward),
          globalBackgroundColor: Colors.white,
        ),
      );
}
