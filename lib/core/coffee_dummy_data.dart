import 'dart:math';

class CoffeModel {
  final String name;
  final double price;
  final String contains;
  final double rating;
  final String imageUrl;
  const CoffeModel({
    required this.name,
    required this.price,
    required this.contains,
    required this.rating,
    required this.imageUrl,
  });
}

const List<String> coffeNames = [
  "Cappuccino",
  "Machiato",
  "Latte",
  " Espresso ",
  "Cold Brew",
  "Cappuccino ",
  "Mocha Magic",
  "Single-Origin",
  "Flavored Fusion",
  "Decadent ",
  "Light Roast",
  "Dark Roast",
  "Organic Bliss",
];

const List<String> _coffeImages = [
  "asset/grid_images/1.avif",
  "asset/grid_images/2.avif",
  "asset/grid_images/3.avif",
  "asset/grid_images/4.avif",
  "asset/grid_images/5.avif",
  "asset/grid_images/6.avif",
  "asset/grid_images/7.avif",
  "asset/grid_images/8.avif",
  "asset/grid_images/9.avif",
  "asset/grid_images/10.avif",
  "asset/grid_images/11.avif",
  "asset/grid_images/12.avif",
  "asset/grid_images/13.avif",
  "asset/grid_images/14.avif",
  "asset/grid_images/15.avif",
  "asset/grid_images/16.avif",
  "asset/grid_images/17.avif",
  "asset/grid_images/18.avif",
  "asset/grid_images/19.avif",
  "asset/grid_images/20.avif",
  "asset/grid_images/21.avif",
  "asset/grid_images/22.avif",
  "asset/grid_images/23.avif",
];

//getting random index from 0 to lenght-1 and then acccess
Random _randomIndex = Random();
int get _getRandomIndex => _randomIndex.nextInt(coffeNames.length);

//get random rating vlaue from 0 to 5
Random _randomRatingValue = Random(0);
double get _getRandomRating => _randomRatingValue.nextDouble();

// dummy data
final List<CoffeModel> coffeeDummyData = [
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[0],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[1],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[2],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[3],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[4],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[5],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[6],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[7],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[8],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[13],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[10],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[11],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[12],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[13],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[14],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[15],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[16],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[17],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[18],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[19],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[20],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[20],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[21],
  ),
  CoffeModel(
    name: coffeNames[_getRandomIndex],
    price: 344,
    contains: "With Chocolate",
    rating: _getRandomRating + 2.2,
    imageUrl: _coffeImages[22],
  ),
];
