import 'package:flutter/foundation.dart';

class Clothes with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Clothes(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Cloth with ChangeNotifier {
  List<Clothes> _items = [
    Clothes(
      id: '1',
      name: 'Pathani Suit for Men',
      imgUrl:
          'https://1099554485.rsc.cdn77.org/upload/products/orange_color_pathani_suit_for_festive_wear_15353546741043_15.jpg',
      price: 2250,
      category: 'Clothes',
      description:
          'A Pathani suit is a sober outfit which has a kurta with a stand collar, and maybe pockets. It is worn with a salwar. It looks balanced as it is slightly traditional and less formal.',
    ),
    Clothes(
      id: '2',
      name: 'Pheran for Women',
      imgUrl:
          'https://www.angadcreations.com/wp-content/uploads/2020/11/il_794xN.2611566381_fdrp.jpg',
      price: 1999,
      category: 'Clothes',
      description:
          'Pheran, a kashmiri form of cloak is longer in size as compared to a kurta and is worn over the dress like a coat. It is also known as the traditional dress of Kashmir. The pheran is generally made of Silk & wool.',
    ),
    Clothes(
      id: '3',
      name: 'Anarkali Salwar Suit',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71BtvLEAXXL._UL1500_.jpg',
      price: 2190,
      category: 'Clothes',
      description:
          ' Punjabi suit is the traditional dress of women in the Punjab region of northwestern India and eastern Pakistan. The outfit comprises a pair of trousers (salwar) and a tunic (kameez) that is usually paired with a scarf (dupatta).',
    ),
    Clothes(
      id: '4',
      name: 'Silk blended Kurta and Pajama ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61L32OwV8uL._UL1440_.jpg',
      price: 2500,
      category: 'Clothes',
      description:
          'This ethnic apparel can be worn in any season. They give a Ethnic look, so you can wear them for any occasion like to wedding ,festival for gatherings or even for weddings.',
    ),
    Clothes(
      id: '5',
      name: ' Ghagra Choli',
      imgUrl:
          'https://5.imimg.com/data5/CJ/XD/GLADMIN-50968169/cotton-lehenga-choli-500x500.png',
      price: 1299,
      category: 'Clothes',
      description:
          'The ghagra is a full-length, embroidered and pleated skirt, which comes in a variety of colours, prints and fabrics, such as silk, cotton, georgette and crêpe',
    ),
    Clothes(
      id: '6',
      name: 'Paithani Saree',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71DS3xESx4L._UY879_.jpg',
      price: 3999,
      category: 'Clothes',
      description:
          'Paithani is a sari made of silk and zari. It is a plain weave, with weft figuring designs according to the principles of tapestry. Traditionally, Paithanis had a coloured, cotton muslin field that often contained considerable supplementary zari patterning',
    ),
    Clothes(
      id: '7',
      name: 'Dhoti Kurta',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Z4zpaZPsc1BwWjXjXy36sdeJq3bW_byG1w&usqp=CAU',
      price: 1999,
      category: 'Clothes',
      description:
          'Dhoti kurta is the most traditional of all dresses worn by the men in India. ... Dhoti is a rectangular piece of unstitched cloth about five yards long, wrapped about the waist and legs and knotted at the waist.',
    ),
    Clothes(
      id: '8',
      name: 'Kasavu Saree',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81xcQCurEFL._UL1500_.jpg',
      price: 1140,
      category: 'Clothes',
      description:
          'Off White color Traditional Saree, With Woven Zari design All over , Has Zari woven border and pallu , Comes With Off White Color: Running Unstiched Blouse',
    ),
  ];

  List<Clothes> get items {
    return [..._items];
  }

  Clothes findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
