import 'package:flutter/foundation.dart';

class Jewel with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Jewel(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Products1 with ChangeNotifier {
  List<Jewel> _items = [
    Jewel(
      id: '1',
      name: 'Jewel Pari',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81ZNGzOJdxL._UY695_.jpg',
      price: 1499,
      category: 'Jewel',
      description:
          'Jewel Pari Non-precious Metal & Gold-plated Base Metal and Necklace Earrings Set for Women & Girls',
    ),
    Jewel(
      id: '2',
      name: 'LABZIO ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81wSTukgYRL._UL1500_.jpg',
      price: 1299,
      category: 'Jewel',
      description:
          'Labzio by EISCO Wooden Hand Made,Portable, Jewellery Stand for Necklaces',
    ),
    Jewel(
      id: '3',
      name: 'Sanvatsar  ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71ssSS1uaOL._UL1141_.jpg',
      price: 899,
      category: 'Spice',
      description:
          'Sanvatsar Fabric 2 Colour Gold Jewellery Set for Girls & Women (White)',
    ),
    Jewel(
      id: '4',
      name: 'Zeneme',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71dHcvcv2XL._UL1500_.jpg',
      price: 4,
      category: 'Jewel',
      description:
          'Gift by Zeneme Combo of Heart Shaped Gold Plated White Colored and American Diamond Pendant with Earrings, Bracelet and Ring for Women & Girls',
    ),
    Jewel(
      id: '5',
      name: 'PRIYAASI ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71Udnde0x0L._UL1440_.jpg',
      price: 990,
      category: 'Jewel',
      description:
          'PRIYAASI Women\'s Brass Kundan Studded Choker Jewellery Set(Gold)',
    ),
    Jewel(
      id: '6',
      name: 'Malabar Gold & Diamonds',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71IUos2Po3L._UL1200_.jpg',
      price: 5440,
      category: 'Jewel',
      description:
          'This coin is made of 22KT yellow gold. The coin is 12 mm in length and 12 mm in width. This coin belongs to the Gold Coin collection',
    ),
  ];

  List<Jewel> get items {
    return [..._items];
  }

  Jewel findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
