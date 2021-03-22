import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/jewels.dart';
//import 'package:flutter_ecom/models/spices.dart';
import 'package:provider/provider.dart';

import './pdt_item.dart';
import '../models/spices.dart';
import '../models/jewels.dart';
import '../models/Decor.dart';
import 'package:flutter_ecom/models/art.dart';
import 'package:flutter_ecom/models/Clothes.dart';
import 'package:flutter_ecom/models/Decor.dart';
import 'package:flutter_ecom/models/jewels.dart';
import 'category.dart' as cat;


class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    // final productData1 = Provider.of<Products1>(context);
    final pdts = productData.items;
   return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: pdts[i],
          child: PdtItem(
            name: pdts[i].name,
            imageUrl: pdts[i].imgUrl,
          )),
    );
  }
}
