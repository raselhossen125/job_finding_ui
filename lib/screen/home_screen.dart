// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../untils/colors.dart';
import '../widget/work_item_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor().bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 15),
          child: Column(
            children: [
              // TODO Topbar start
              Row(
                children: [
                  Card(
                    elevation: 5,
                    color: appColor().greyColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      color: appColor().btnColor,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active_outlined),
                    color: appColor().btnColor,
                  ),
                ],
              ), // TODO Topbar end
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Search,",
                  style: TextStyle(
                      color: appColor().btnColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Find & Apply,",
                  style: TextStyle(
                      color: appColor().btnColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // TODO search bar start
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextFormField(
                  cursorColor: appColor().cardColor,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.circle,
                      size: 20,
                      color: appColor().cardColor,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: appColor().cardColor,
                    ),
                    hintText: "Search here...",
                    hintStyle: TextStyle(color: appColor().cardBtnColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 230, 227, 227),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 230, 227, 227),
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: appColor().btnColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ), // TODO search bar end
              SizedBox(
                height: 15,
              ),
              Container(
                height: 44,
                child: WorkItemWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
