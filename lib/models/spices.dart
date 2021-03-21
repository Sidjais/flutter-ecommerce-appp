import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      name: 'Cardamom (50g)',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/16/Elettaria_cardamomum2.jpg',
      price: 250,
      category: 'Spice',
      description:
          'You can’t mistake the flavor of green cardamom. It tastes a lot like eucalyptus (and hence like many cough losanges) owing to a compound called cineole. Still don\'t let that discourage you. Cardamom is one of the key ingredients in Indian cuisine, particularly in Biryani.',
    ),
    Product(
      id: '2',
      name: 'Turmeric(500g) ',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51uB5D4tKbL._SL1000_.jpg',
      price: 199,
      category: 'Spice',
      description:
          'Turmeric is enigmatic because its flavour is subtle. Turmeric\'s flavour contribution is distinct yet in the background. Perhaps more than flavour, turmeric\'s real contribution is its health benefits and colour. Turmeric is typically added, as a powder, to a curry sauce after the wet ingredients have been added.',
    ),
    Product(
      id: '3',
      name: 'Cumin (100g) ',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Seeds_of_Cumin.jpg/1200px-Seeds_of_Cumin.jpg',
      price: 90,
      category: 'Spice',
      description:
          'Cumin is an incredible spice. It’s in almost every Indian dish. It is fried in butter as the spice foundation for Butter Chicken, you fry it in oil for most taarka recipes, and you use it in all versions of the famous garam masala. It has a flavour profile not unlike carraway or dill.Generally cumin is best used whole, and fried in oil at the beginning of a dish.',
    ),
    Product(
      id: '4',
      name: 'Fenugreek/Methi (500g)',
      imgUrl:
          'https://5.imimg.com/data5/XB/EG/MY-4195389/fenugreek-or-methi-dana-500x500.jpg',
      price: 320,
      category: 'Spice',
      description:
          'Fenugreek is a subtle spice. Tasting it on its own as a raw ingredient doesn’t give you a ready understanding of where it might fit into your cooking, the seeds in particular have a bitterness and a hint of maple. You may use the ground seeds or the leaves, and either one has a sweet/bitter flavour. ',
    ),
    Product(
      id: '5',
      name: 'Indian Bay/Tej Patta (200g)',
      imgUrl:
          'https://www.seasonedpioneers.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2016/09/Tej-Patta-600x442.jpg.webp',
      price: 299,
      category: 'Spice',
      description:
          'Indian bay is used in much the same manner as European bay. It is included as a whole leaf and usually cooked for the length of the dish, removed just before serving. It’s aromatic flavour is reminiscent of cinnamon and clove, but much more subtle with a leafy flavour of its own. ',
    ),
    Product(
      id: '6',
      name: 'Cinnamon/Dalchini (100g)',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/41SnDeUqbFL.jpg',
      price: 399,
      category: 'Spice',
      description:
          'Cinnamon is an ingredient you find in most Indian grocery stores. It is a relative of cinnamon, and you can use it in exactly the same way. Usually cinnamon are fried whole at the beginning cooking an Indian dish, and left in.',
    ),
    Product(
      id: '7',
      name: 'Nutmeg/Jaiphal (100)',
      imgUrl:
          'https://5.imimg.com/data5/IN/EU/MY-10613027/fresh-nutmeg-500x500.jpg',
      price: 249,
      category: 'Spice',
      description:
          'Whole, grated nutmeg is a common ingredient across India, particularly in the south. Using it as a whole spice is a completely different experience than using the ground spice, which rapidly loses the strong nutmeg flavour.',
    ),
    Product(
      id: '8',
      name: 'Black Pepper (100g)',
      imgUrl:
          'https://static.fanpage.it/wp-content/uploads/sites/22/2019/07/blackpepper-300x225.jpg',
      price: 140,
      category: 'Spice',
      description:
          'Whole, grated nutmeg is a common ingredient across India, particularly in the south. Using it as a whole spice is a completely different experience than using the ground spice, which rapidly loses the strong nutmeg flavour.',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
