import 'package:flutter/foundation.dart';

class Art with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Art(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Arts with ChangeNotifier {
  List<Art> _items = [
    Art(
      id: '1',
      name: 'KYARA ARTS Wood Painting',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91CKsumAMeL._SL1500_.jpg',
      price: 999,
      category: 'Art',
      description:
          'The Prints are made from our instant-dry matte imported canvases (300 Gsm)which further make for long lasting, fade resistant prints.Contains high levels of white, to ensure that the colours of paintings are reproduced with brilliant tones.',
    ),
    Art(
      id: '2',
      name: 'Eggshell Hand Painting',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51MrLheypEL.jpg',
      price: 450,
      category: 'Art',
      description:
          'Do It Yourself hand painting on eggshell. Easy coloring. Can be hanged as a decorative item too. Comes with 4 sketch pens. Pack of 8pcs. For kids above 3 years. Ideal for return gifts. Let kids explore their painting skills',
    ),
    Art(
      id: '3',
      name: 'Wood Buddha Framed Painting',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/916mCtIkdjL._SL1500_.jpg',
      price: 2250,
      category: 'Art',
      description:
          'Framed on 7mm Heavy MDF Board art prints ready to hang for home decorations wall decor using hanging clips provided on the backside of every panel.Double Tapes provided in the package can be used for the alignment of the frames if needed.',
    ),
    Art(
      id: '4',
      name: 'Twin Mandala Tapestry Wall Hanging',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81rdMtEdJRL._SL1500_.jpg',
      price: 1150,
      category: 'Art',
      description:
          'This beautiful Home Decor Piece can be used as Tapestry, Wall Hanging, Bedspread, Wall Decor, Wall Art, Bed Cover, Room Divider, Curtain, Table Cloth, College Dorm, Picnic blanket and Beach throw',
    ),
    Art(
      id: '5',
      name: 'Krishan Wall Painting',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91kFhFu1BSL._SL1500_.jpg',
      price: 3099,
      category: 'Art',
      description:
          'The paintings involve the usage of natural colors that are obtained from fruits, leaves, flowers, etc.This Wall Painting Scroll Beautiful Lady Floral is ideal for your homes and spreads positivity all around.',
    ),
    Art(
      id: '6',
      name: 'Medieval Arts Wood Wall Hanging Jharokha',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/510avSfkLOL.jpg',
      price: 899,
      category: 'Art',
      description:
          'Decorate you home with beautiful and vibrant handpainted Jharokha by Medieval Art. This is the handmade product so there may be minor size fluctuation .',
    ),
  ];

  List<Art> get items {
    return [..._items];
  }

  Art findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
