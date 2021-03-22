import 'package:flutter/material.dart';
import '../widgets/category.dart';
import 'category_card.dart';
import '../widgets/all_pdts.dart';
import 'package:provider/provider.dart';
import 'pdt_item.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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

List<Product> _spices = [
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
    imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/41SnDeUqbFL.jpg',
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


List<Product> _jewels = [
  Product(
    id: '11',
    name: 'Jewel Pari',
    imgUrl:
        'https://images-na.ssl-images-amazon.com/images/I/81ZNGzOJdxL._UY695_.jpg',
    price: 1499,
    category: 'Jewel',
    description:
        'Jewel Pari Non-precious Metal & Gold-plated Base Metal and Necklace Earrings Set for Women & Girls',
  ),
  Product(
    id: '12',
    name: 'LABZIO ',
    imgUrl:
        'https://images-na.ssl-images-amazon.com/images/I/81wSTukgYRL._UL1500_.jpg',
    price: 1299,
    category: 'Jewel',
    description:
        'Labzio by EISCO Wooden Hand Made,Portable, Jewellery Stand for Necklaces',
  ),
  Product(
    id: '13',
    name: 'Sanvatsar  ',
    imgUrl:
        'https://images-na.ssl-images-amazon.com/images/I/71ssSS1uaOL._UL1141_.jpg',
    price: 899,
    category: 'Spice',
    description:
        'Sanvatsar Fabric 2 Colour Gold Jewellery Set for Girls & Women (White)',
  ),
  Product(
    id: '14',
    name: 'Zeneme',
    imgUrl:
        'https://images-na.ssl-images-amazon.com/images/I/71dHcvcv2XL._UL1500_.jpg',
    price: 4,
    category: 'Jewel',
    description:
        'Gift by Zeneme Combo of Heart Shaped Gold Plated White Colored and American Diamond Pendant with Earrings, Bracelet and Ring for Women & Girls',
  ),
  Product(
    id: '15',
    name: 'PRIYAASI ',
    imgUrl:
        'https://images-na.ssl-images-amazon.com/images/I/71Udnde0x0L._UL1440_.jpg',
    price: 990,
    category: 'Jewel',
    description:
        'PRIYAASI Women\'s Brass Kundan Studded Choker Jewellery Set(Gold)',
  ),
  Product(
    id: '16',
    name: 'Malabar Gold & Diamonds',
    imgUrl:
        'https://images-na.ssl-images-amazon.com/images/I/71IUos2Po3L._UL1200_.jpg',
    price: 5440,
    category: 'Jewel',
    description:
        'This coin is made of 22KT yellow gold. The coin is 12 mm in length and 12 mm in width. This coin belongs to the Gold Coin collection',
  ),
];
List<Product> _decor = [
  Product(
    id: '31',
    name: 'Antique Music Decorative Canon ',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/711hjRO3qqL._SL1500_.jpg',
    price: 999,
    category: 'Decor',
    description:
    'Decorative gramophone made of brass is a perfect gift for people who love to collect small and antique articles. Its versatile design, intricate artistry and superlative craftsmanship makes this ideal for your home and office desks. This brass showpiece is diligently handcrafted by skilled artisans of eCraftIndia using various traditional techniques.',
  ),
  Product(
    id: '32',
    name: 'Two Moustaches The Thinking Man Decor Brass',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/81uocEnyy%2BL._SL1500_.jpg',
    price: 1999,
    category: 'Decor',
    description:
    'The Thinking Man Brass Showpiece is crafted to enhance your interior décor. Place it on a table and people will acknowledge it because of its attractiveness. Exhibiting a man in a state of thinking, this showpiece reflects exquisiteness.',
  ),
  Product(
    id: '33',
    name: 'Iron Punjabi Musician Set',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/91%2BDqPDgK7L._SL1500_.jpg',
    price: 1750,
    category: 'Decor',
    description:
    'ROCOMO Handcrafted Idols showpiece is made of Cast Iron material. This has been made by the combination of contemporary and traditional methods. This is very attractive and has an elegant look, beautifully painted and makes your home look beautiful and attractive. ',
  ),
  Product(
    id: '34',
    name: 'Sitting Buddha Idol',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/715ceYF6trL._SL1500_.jpg',
    price: 540,
    category: 'Decor',
    description:
    'This beautiful Meditating Buddha showpiece figurine from Global Grabbers is a wonderful gifting option for your best friend on her housewarming party. Ideal to keep in your room or living room in a showcase, this showpiece of Buddha in a meditating posture is made from polyresin and is handcrafted by skilled artisans using conventional techniques.',
  ),
  Product(
    id: '35',
    name: 'MICROTEX Big Opal Peacock Wall Art ',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/51iTzuISB5L.jpg',
    price: 5550,
    category: 'Decor',
    description:
    'OPAL PEACOCK is unique in it\'s own style. Add a vibe of creativity and class to your interior to enrich its ambience by installing these amazingly designed Metal Art. This astoundingly designed Metal Art is not only durable or unique looking, but it also beautifies your walls with artistic make & intricate detailing, while creating a unique vibe.',
  ),
  Product(
    id: '36',
    name: ' India Rajasthani Handicrafts Couple Showpieces ',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/71AGzniyrpL._SL1500_.jpg',
    price: 1299,
    category: 'Decor',
    description:
    'These are ideal for decorating your living room and house.This product is perfect for decorating any time of the year ornaments, statues have been in demand from 1000s of years and make a great accent for any holiday, event or home the couple playing in unison beautifully placed on a platform would surely be a piece of attraction.',
  ),
  Product(
    id: '37',
    name: 'Brass Lord Krishna Idol Bhagwan Large Statue',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/41%2Bz0-68btL.jpg',
    price: 21970,
    category: 'Decor',
    description:
    'Large Hindu Krishna standing playing flute is Symbol Of love & happiness. Their love is common spiritual love affair between divine Krishna and his devotee Radha. Krishna is supreme God and Radha supposed to control with her deep love. Krishna statue can be used for pooja or to decorate your home. Krishna Statue are also very happy figures to have in your home.',
  ),
  Product(
    id: '38',
    name: 'Meera Bai Statue White Showpiece',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/61RTJB3FuqL._SL1334_.jpg',
    price: 1149,
    category: 'Decor',
    description:
    'BS handicrafts is a well known name in handcrafted Idols & home decorative items , These statues are Made of Marble Resin with Durable & Long Lasting Colours. It is easily cleanable by wet/Dry Cotton Cloth.',
  ),
];
List<Product> _clothes = [
  Product(
    id: '41',
    name: 'Pathani Suit for Men',
    imgUrl:
    'https://1099554485.rsc.cdn77.org/upload/products/orange_color_pathani_suit_for_festive_wear_15353546741043_15.jpg',
    price: 2250,
    category: 'Clothes',
    description:
    'A Pathani suit is a sober outfit which has a kurta with a stand collar, and maybe pockets. It is worn with a salwar. It looks balanced as it is slightly traditional and less formal.',
  ),
  Product(
    id: '42',
    name: 'Pheran for Women',
    imgUrl:
    'https://www.angadcreations.com/wp-content/uploads/2020/11/il_794xN.2611566381_fdrp.jpg',
    price: 1999,
    category: 'Clothes',
    description:
    'Pheran, a kashmiri form of cloak is longer in size as compared to a kurta and is worn over the dress like a coat. It is also known as the traditional dress of Kashmir. The pheran is generally made of Silk & wool.',
  ),
  Product(
    id: '43',
    name: 'Anarkali Salwar Suit',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/71BtvLEAXXL._UL1500_.jpg',
    price: 2190,
    category: 'Clothes',
    description:
    ' Punjabi suit is the traditional dress of women in the Punjab region of northwestern India and eastern Pakistan. The outfit comprises a pair of trousers (salwar) and a tunic (kameez) that is usually paired with a scarf (dupatta).',
  ),
  Product(
    id: '44',
    name: 'Silk blended Kurta and Pajama ',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/61L32OwV8uL._UL1440_.jpg',
    price: 2500,
    category: 'Clothes',
    description:
    'This ethnic apparel can be worn in any season. They give a Ethnic look, so you can wear them for any occasion like to wedding ,festival for gatherings or even for weddings.',
  ),
  Product(
    id: '45',
    name: ' Ghagra Choli',
    imgUrl:
    'https://5.imimg.com/data5/CJ/XD/GLADMIN-50968169/cotton-lehenga-choli-500x500.png',
    price: 1299,
    category: 'Clothes',
    description:
    'The ghagra is a full-length, embroidered and pleated skirt, which comes in a variety of colours, prints and fabrics, such as silk, cotton, georgette and crêpe',
  ),
  Product(
    id: '46',
    name: 'Paithani Saree',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/71DS3xESx4L._UY879_.jpg',
    price: 3999,
    category: 'Clothes',
    description:
    'Paithani is a sari made of silk and zari. It is a plain weave, with weft figuring designs according to the principles of tapestry. Traditionally, Paithanis had a coloured, cotton muslin field that often contained considerable supplementary zari patterning',
  ),
  Product(
    id: '47',
    name: 'Dhoti Kurta',
    imgUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Z4zpaZPsc1BwWjXjXy36sdeJq3bW_byG1w&usqp=CAU',
    price: 1999,
    category: 'Clothes',
    description:
    'Dhoti kurta is the most traditional of all dresses worn by the men in India. ... Dhoti is a rectangular piece of unstitched cloth about five yards long, wrapped about the waist and legs and knotted at the waist.',
  ),
  Product(
    id: '48',
    name: 'Kasavu Saree',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/81xcQCurEFL._UL1500_.jpg',
    price: 1140,
    category: 'Clothes',
    description:
    'Off White color Traditional Saree, With Woven Zari design All over , Has Zari woven border and pallu , Comes With Off White Color: Running Unstiched Blouse',
  ),
];
List<Product> _arts = [
  Product(
    id: '51',
    name: 'KYARA ARTS Wood Painting',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/91CKsumAMeL._SL1500_.jpg',
    price: 999,
    category: 'Art',
    description:
    'The Prints are made from our instant-dry matte imported canvases (300 Gsm)which further make for long lasting, fade resistant prints.Contains high levels of white, to ensure that the colours of paintings are reproduced with brilliant tones.',
  ),
  Product(
    id: '52',
    name: 'Eggshell Hand Painting',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/51MrLheypEL.jpg',
    price: 450,
    category: 'Art',
    description:
    'Do It Yourself hand painting on eggshell. Easy coloring. Can be hanged as a decorative item too. Comes with 4 sketch pens. Pack of 8pcs. For kids above 3 years. Ideal for return gifts. Let kids explore their painting skills',
  ),
  Product(
    id: '53',
    name: 'Wood Buddha Framed Painting',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/916mCtIkdjL._SL1500_.jpg',
    price: 2250,
    category: 'Art',
    description:
    'Framed on 7mm Heavy MDF Board art prints ready to hang for home decorations wall decor using hanging clips provided on the backside of every panel.Double Tapes provided in the package can be used for the alignment of the frames if needed.',
  ),
  Product(
    id: '54',
    name: 'Twin Mandala Tapestry Wall Hanging',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/81rdMtEdJRL._SL1500_.jpg',
    price: 1150,
    category: 'Art',
    description:
    'This beautiful Home Decor Piece can be used as Tapestry, Wall Hanging, Bedspread, Wall Decor, Wall Art, Bed Cover, Room Divider, Curtain, Table Cloth, College Dorm, Picnic blanket and Beach throw',
  ),
  Product(
    id: '55',
    name: 'Krishan Wall Painting',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/91kFhFu1BSL._SL1500_.jpg',
    price: 3099,
    category: 'Art',
    description:
    'The paintings involve the usage of natural colors that are obtained from fruits, leaves, flowers, etc.This Wall Painting Scroll Beautiful Lady Floral is ideal for your homes and spreads positivity all around.',
  ),
  Product(
    id: '56',
    name: 'Medieval Arts Wood Wall Hanging Jharokha',
    imgUrl:
    'https://images-na.ssl-images-amazon.com/images/I/510avSfkLOL.jpg',
    price: 899,
    category: 'Art',
    description:
    'Decorate you home with beautiful and vibrant handpainted Jharokha by Medieval Art. This is the handmade product so there may be minor size fluctuation .',
  ),
];
var _items = _spices;
var select = 1;

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    // final cat = Provider.of<Category>(context);
    //final allpdt= Provider.of<AllProducts>(context);
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          'Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CategoryCard(
                  Icon(
                    MdiIcons.chiliMedium,
                    color: Colors.red,
                    size: 40,
                  ),
                  'Spices', () {
                setState(() {
                  select = 1;
                  _items=_spices;
                });
                print("hello");
              }),
              CategoryCard(
                  Icon(
                    MdiIcons.gold,
                    color: Colors.amber,
                    size: 40,
                  ),
                  'Jewels', () {
                setState(() {
                  select = 2;
                  _items=_jewels;
                });
                print("hello");
              }),
              CategoryCard(
                  Icon(
                    Icons.home, //home_work_outlined,
                    color: Colors.pink,
                    size: 40,
                  ),
                  'Decor', () {
                setState(() {
                  _items=_decor;
                  select = 3;
                });
                print("hello");
              }),
              CategoryCard(
                  Icon(
                    MdiIcons.tshirtV,
                    color: Colors.orange,
                    size: 40,
                  ),
                  'Clothes', () {
                setState(() {
                  _items=_clothes;
                  select = 4;
                });
                print("hello");
              }),
              CategoryCard(
                  Icon(
                    MdiIcons.artstation,
                    color: Colors.blue,
                    size: 40,
                  ),
                  'Art', () {
                setState(() {
                  _items=_arts;
                  select = 5;
                });
                print("hello");
              }),
              CategoryCard(
                  Icon(
                    Icons.account_balance_wallet, //wallet_travel_rounded,
                    size: 40,
                  ),
                  'Others', () {
                setState(() {
                  select = 6;
                });
                print("hello");
              }),
            ],
          ),
        ),
        Center(
            child: Text(
          'Products',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        //AllProducts()
        GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: _items.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: _items[i],
              child: PdtItem(
                name: _items[i].name,
                imageUrl: _items[i].imgUrl,
                id: _items[i].id,
                price: _items[i].price,
              )),
        )
      ],
    );
  }
}
