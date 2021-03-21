import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom/widgets/home_body.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../screens/cart_screen.dart';
import 'cart_screen.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int count = 0;
    for (int i = 0; i < cart.items.length; i++) {
      count = count + cart.items.values.toList()[i].quantity;
    }
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Desi Adda'),
            actions: <Widget>[
              IconButton(
                  icon: Badge(
                      badgeContent: Text(count.toString()),
                      badgeColor: Colors.white,
                      child: Icon(
                        Icons.shopping_cart,
                        size: 30,
                      )),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(CartScreen.routeName))
            ],
          ),
          body: HomeBody()),
    );
  }
}
