import 'package:flutter/material.dart';

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
                Icons.book,
                size: 40,

              ),
              'Book',
                  (){
                print("hello");
              }),
          CategoryCard(
              Icon(
                Icons.computer,
                size: 40,
              ),
              'Laptops',
                  (){
                print("hello");
              }),
          CategoryCard(
              Icon(
                Icons.videogame_asset,
                size: 40,
              ),
              'Games',
                  (){
                print("hello");
              }),
          CategoryCard(
              Icon(
                Icons.videocam,
                size: 40,
              ),
              'Movies',
                  (){
                print("hello");
              }),
          CategoryCard(
              Icon(
                Icons.watch,
                size: 40,
              ),
              'Watches',
                  (){
                print("hello");
              }),
          CategoryCard(
              Icon(
                Icons.weekend,
                size: 40,
              ),
              'Furniture',
                  (){
                print("hello");
              }),
        ],
      ),
    );
  }
}
