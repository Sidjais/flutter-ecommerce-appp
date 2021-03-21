import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './category_card.dart';

class Category extends StatefulWidget {

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                MdiIcons.chiliMedium,
                color: Colors.red,
                size: 40,
              ),
              'Spices', () {
                index=0;
            print("hello");
          }),
          CategoryCard(
              Icon(
                MdiIcons.gold,
                color: Colors.amber,
                size: 40,
              ),
              'Jewels', () {
            print("hello");
            index=1;
          }),
          CategoryCard(
              Icon(
                Icons.home,//home_work_outlined,
                color: Colors.pink,
                size: 40,
              ),
              'Decor', () {
            print("hello");
            index=2;
          }),
          CategoryCard(
              Icon(
                MdiIcons.tshirtV,
                color: Colors.orange,
                size: 40,
              ),
              'Clothes', () {
            print("hello");
            index=3;
          }),
          CategoryCard(
              Icon(
                MdiIcons.artstation,
                color: Colors.blue,
                size: 40,
              ),
              'Art', () {
            print("hello");
            index=4;
          }),
          CategoryCard(
              Icon(
                Icons.account_balance_wallet,//wallet_travel_rounded,
                size: 40,
              ),
              'Others', () {
            print("hello");
            index=5;
          }),
        ],
      ),
    );
  }
}
