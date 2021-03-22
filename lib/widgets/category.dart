import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import './category_card.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var select=1;

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
            setState(() {
              select=1;
            });
            print("hello");
          }),
          CategoryCard(
              Icon(
                MdiIcons.gold,
                color: Colors.amber,
                size: 40,
              ),
              'Jewels', () {
            setState(() {
              select=2;
            });
            print("hello");
          }),
          CategoryCard(
              Icon(
                Icons.home,//home_work_outlined,
                color: Colors.pink,
                size: 40,
              ),
              'Decor', () {
            setState(() {
              select=3;
            });
            print("hello");
          }),
          CategoryCard(
              Icon(
                MdiIcons.tshirtV,
                color: Colors.orange,
                size: 40,
              ),
              'Clothes', () {
            setState(() {
              select=4;
            });
            print("hello");
          }),
          CategoryCard(
              Icon(
                MdiIcons.artstation,
                color: Colors.blue,
                size: 40,
              ),
              'Art', () {
            setState(() {
              select=5;
            });
            print("hello");
          }),
          CategoryCard(
              Icon(
                Icons.account_balance_wallet,//wallet_travel_rounded,
                size: 40,
              ),
              'Others', () {
            setState(() {
              select=6;
            });
            print("hello");
          }),
        ],
      ),
    );
  }

}
// get selec {
//   return select;
// }