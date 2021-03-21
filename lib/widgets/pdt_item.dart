import 'package:flutter/material.dart';
import 'package:flutter_ecom/screens/pdt_detail_screen.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/spices.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridTile(
          child: Hero(tag: pdt.id, child: Image.network(imageUrl)),
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Item Added to Cart'),
                  ));
                  cart.addItem(pdt.id, pdt.name, pdt.price);
                }),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
