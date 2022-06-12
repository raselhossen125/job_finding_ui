// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../untils/colors.dart';
import 'custom_tab_indicator.dart';
import 'popular_tabbarView_widget.dart';

class HometabBarWidget extends StatefulWidget {
  @override
  State<HometabBarWidget> createState() => _HometabBarWidgetState();
}

class _HometabBarWidgetState extends State<HometabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: TabBar(
            isScrollable: true,
            indicator: RoundedRectangleTabIndicator(
              color: appColor().cardColor,
              weight: 7,
              width: 7,
            ),
            labelPadding: EdgeInsets.only(left: 0, right: 20),
            indicatorPadding: EdgeInsets.only(left: 0, right: 20),
            labelColor: appColor().btnColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            indicatorColor: appColor().cardColor,
            controller: _tabController,
            tabs: [
              Tab(
                text: "Popular",
              ),
              Tab(
                text: "latest",
              ),
              Tab(
                text: "Categories",
              ),
              Tab(
                text: "Upcoming",
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              PopularTabBarViewWidget(),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ),
      ],
    );
  }
}
