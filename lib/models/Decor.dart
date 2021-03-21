import 'package:flutter/foundation.dart';

class Decor1 with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Decor1(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Decor with ChangeNotifier {
  List<Decor1> _items = [
    Decor1(
      id: '1',
      name: 'Antique Music Decorative Canon ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/711hjRO3qqL._SL1500_.jpg',
      price: 999,
      category: 'Decor',
      description:
          'Decorative gramophone made of brass is a perfect gift for people who love to collect small and antique articles. Its versatile design, intricate artistry and superlative craftsmanship makes this ideal for your home and office desks. This brass showpiece is diligently handcrafted by skilled artisans of eCraftIndia using various traditional techniques.',
    ),
    Decor1(
      id: '2',
      name: 'Two Moustaches The Thinking Man Decor Brass',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81uocEnyy%2BL._SL1500_.jpg',
      price: 1999,
      category: 'Decor',
      description:
          'The Thinking Man Brass Showpiece is crafted to enhance your interior décor. Place it on a table and people will acknowledge it because of its attractiveness. Exhibiting a man in a state of thinking, this showpiece reflects exquisiteness.',
    ),
    Decor1(
      id: '3',
      name: 'Iron Punjabi Musician Set',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91%2BDqPDgK7L._SL1500_.jpg',
      price: 1750,
      category: 'Decor',
      description:
          'ROCOMO Handcrafted Idols showpiece is made of Cast Iron material. This has been made by the combination of contemporary and traditional methods. This is very attractive and has an elegant look, beautifully painted and makes your home look beautiful and attractive. ',
    ),
    Decor1(
      id: '4',
      name: 'Sitting Buddha Idol',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/715ceYF6trL._SL1500_.jpg',
      price: 540,
      category: 'Decor',
      description:
          'This beautiful Meditating Buddha showpiece figurine from Global Grabbers is a wonderful gifting option for your best friend on her housewarming party. Ideal to keep in your room or living room in a showcase, this showpiece of Buddha in a meditating posture is made from polyresin and is handcrafted by skilled artisans using conventional techniques.',
    ),
    Decor1(
      id: '5',
      name: 'MICROTEX Big Opal Peacock Wall Art ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51iTzuISB5L.jpg',
      price: 5550,
      category: 'Decor',
      description:
          'OPAL PEACOCK is unique in it\'s own style. Add a vibe of creativity and class to your interior to enrich its ambience by installing these amazingly designed Metal Art. This astoundingly designed Metal Art is not only durable or unique looking, but it also beautifies your walls with artistic make & intricate detailing, while creating a unique vibe.',
    ),
    Decor1(
      id: '6',
      name: ' India Rajasthani Handicrafts Couple Showpieces ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71AGzniyrpL._SL1500_.jpg',
      price: 1299,
      category: 'Decor',
      description:
          'These are ideal for decorating your living room and house.This product is perfect for decorating any time of the year ornaments, statues have been in demand from 1000s of years and make a great accent for any holiday, event or home the couple playing in unison beautifully placed on a platform would surely be a piece of attraction.',
    ),
    Decor1(
      id: '7',
      name: 'Brass Lord Krishna Idol Bhagwan Large Statue',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/41%2Bz0-68btL.jpg',
      price: 21970,
      category: 'Decor',
      description:
          'Large Hindu Krishna standing playing flute is Symbol Of love & happiness. Their love is common spiritual love affair between divine Krishna and his devotee Radha. Krishna is supreme God and Radha supposed to control with her deep love. Krishna statue can be used for pooja or to decorate your home. Krishna Statue are also very happy figures to have in your home.',
    ),
    Decor1(
      id: '8',
      name: 'Meera Bai Statue White Showpiece',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61RTJB3FuqL._SL1334_.jpg',
      price: 1149,
      category: 'Decor',
      description:
          'BS handicrafts is a well known name in handcrafted Idols & home decorative items , These statues are Made of Marble Resin with Durable & Long Lasting Colours. It is easily cleanable by wet/Dry Cotton Cloth.',
    ),
  ];

  List<Decor1> get items {
    return [..._items];
  }

  Decor1 findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
