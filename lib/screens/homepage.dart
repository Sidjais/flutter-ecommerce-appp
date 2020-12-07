import 'package:flutter/material.dart';
import 'package:flutter_ecom/widgets/home_body.dart';
import '../screens/cart_screen.dart';
import 'package:badges/badges.dart';
import 'cart_screen.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int count=0;
    for(int i=0; i<cart.items.length ; i++){
      count=count + cart.items.values.toList()[i].quantity;
    }
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Flutter E-com'),
          actions: <Widget>[
            IconButton(icon: Badge(badgeContent:Text(count.toString()),child: Icon(Icons.shopping_cart, size: 30,)), onPressed: ()=>Navigator.of(context).pushNamed(CartScreen.routeName))
          ],
        ),
        body: HomeBody()
      ),
    );
  }
}