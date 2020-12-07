import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom/widgets/home_body.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
            backgroundColor: Colors.blueGrey,
            title: Text('Travel-X Mall'),
            actions: <Widget>[
              IconButton(
                  icon: Badge(
                      badgeContent: Text(count.toString()),
                      badgeColor: Colors.white,
                      child: Icon(MdiIcons.cartOutline)),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(CartScreen.routeName))
            ],
          ),
          body: HomeBody()),
    );
  }
}
