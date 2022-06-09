// ignore_for_file: prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../untils/back_btn.dart';
import '../untils/colors.dart';
import '../widget/logIn_widget.dart';
import '../widget/register_widget.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = 'auth-screen';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColor().bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Column(
            children: [
              BackBtn(
                cardBtnColor: Colors.black,
                cardColor: appColor().greyColor,
                title: 'Candidate',
                titleColor: Colors.black,
                cardBtnIcon: Icon(
                  Icons.arrow_back,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 50,
                child: TabBar(
                  labelColor: appColor().cardColor,
                  unselectedLabelColor: appColor().btnColor,
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  indicatorColor: appColor().cardColor,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: "Log In",
                    ),
                    Tab(
                      text: "Register",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      LogInWidget(),
                      RegisterWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
