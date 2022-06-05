// ignore_for_file: prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:job_finding_ui/untils/back_button.dart';
import 'package:job_finding_ui/untils/colors.dart';

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
                btnColor: Colors.black,
                cardColor: appColor().greyColor,
                title: 'Candidate',
                titleColor: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 50,
                child: TabBar(
                  labelColor: appColor().cardColor,
                  unselectedLabelColor: appColor().btnColor,
                  labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              Container(
                width: double.infinity,
                height: 400,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      color: Colors.black,
                    ),
                    Container(
                      color: Colors.yellow,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
