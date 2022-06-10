// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../untils/colors.dart';
import 'auth_screen.dart';

class DicitionScreen extends StatelessWidget {
  static const routeName = '/dicition-screen';

  @override
  Widget build(BuildContext context) {
    double totalHeight = MediaQuery.of(context).size.height;
    double halfheight = totalHeight / 2;

    return Scaffold(
      backgroundColor: appColor().bgColor,
      body: Column(
        children: [
          Container(
            height: halfheight,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: appColor().greyColor)),
                  child: Center(
                    child: Text(
                      "JOB",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: appColor().cardColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: halfheight,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: halfheight * 0.09,
                    margin: EdgeInsets.only(bottom: halfheight * 0.05),
                    child: Text(
                      "Continue as",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AuthScreen.routeName);
                    },
                    child: Container(
                      height: halfheight * 0.37,
                      margin: EdgeInsets.only(bottom: halfheight * 0.05),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: appColor().btnColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Candidate",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lets recruit your grate",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "candidate faster here",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: halfheight * 0.05),
                    height: halfheight * 0.37,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Company",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: appColor().btnColor,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Finding a job here never",
                            style: TextStyle(
                              color: Color.fromARGB(255, 238, 228, 228),
                            ),
                          ),
                          Text(
                            "been easier than before",
                            style: TextStyle(
                              color: Color.fromARGB(255, 238, 228, 228),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
