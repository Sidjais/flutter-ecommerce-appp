import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/spices.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './category_card.dart';


class Category extends StatelessWidget {
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
            'Spices',
            () {
              print("hello");
              }

          ),
          CategoryCard(
              Icon(
                MdiIcons.gold,
                color: Colors.amber,
                size: 40,
              ),
              'Jewels', () {
            print("hello");
          }),
          CategoryCard(
              Icon(
                Icons.home, //home_work_outlined,
                color: Colors.pink,
                size: 40,
              ),
              'Decor', () {
            print("hello");
          }),
          CategoryCard(
              Icon(
                MdiIcons.tshirtV,
                color: Colors.orange,
                size: 40,
              ),
              'Clothes', () {
            print("hello");
          }),
          CategoryCard(
              Icon(
                MdiIcons.artstation,
                color: Colors.blue,
                size: 40,
              ),
              'Art', () {
            print("hello");
          }),
          CategoryCard(
              Icon(
                Icons.account_balance_wallet, //wallet_travel_rounded,
                size: 40,
              ),
              'Others', () {
            print("hello");
          }),
        ],
      ),
    );
  }
}
