// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBordingPageScreen extends StatelessWidget {
  static const routeName = '/onbording-page';

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only one.',
              footer: Text("data"),
              image: Image.network(
                  "https://img.freepik.com/free-vector/programmer-concept-illustration_114360-2417.jpg?w=740&t=st=1654274655~exp=1654275255~hmac=c90207ca7ee6b7b5c034aa9c498dc0fc5bc15705f063e3686ca2bff7d28d112b",),
            ),
            PageViewModel(
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only one.',
              footer: Text("data"),
              image: Image.network(
                  "https://img.freepik.com/free-vector/programmer-concept-illustration_114360-2284.jpg?size=338&ext=jpg&ga=GA1.2.1205468974.1654265974"),
            ),
            PageViewModel(
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only one.',
              footer: Text("data"),
              image: Image.network(
                  "https://img.freepik.com/free-vector/programmer-concept-illustration_114360-3016.jpg?t=st=1654272454~exp=1654273054~hmac=997b50b01177a738cfd7adfd773a41ed26ac86f0e89919687bb80b9087147eb0&w=740"),
            ),
          ],
          done: Text('NEXT', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {},
          showSkipButton: true,
          skip: Text('SKIP'),
          next: Icon(Icons.arrow_forward),
          globalBackgroundColor: Colors.white,
        ),
      );
}
