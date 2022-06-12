// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/populars_designe.dart';
import 'popular_item.dart';

class PopularTabBarViewWidget extends StatelessWidget {
  const PopularTabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popular = Provider.of<Populars>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popular.items.length,
              itemBuilder: (context, index) {
                return PopularItem(
                  popular.items[index].id,
                  popular.items[index].imageUrl,
                  popular.items[index].salary,
                  popular.items[index].title,
                  popular.items[index].location,
                  popular.items[index].time,
                  popular.items[index].value,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
