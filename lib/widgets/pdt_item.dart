//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_ecom/screens/pdt_detail_screen.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/spices.dart';
import '../models/jewels.dart';
class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String id;
  final double price;

  PdtItem({this.name, this.imageUrl,this.id,this.price});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
  //  final productData1 = Provider.of<Products1>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: id);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridTile(
          child:Image.network(imageUrl),// Hero(tag: pdt.id, child: Image.network(imageUrl)),
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Item Added to Cart'),
                  ));
                  cart.addItem(id, name, price);
                }),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
