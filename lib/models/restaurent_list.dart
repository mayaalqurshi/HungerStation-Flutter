class Restaurant {
  final String restId;
  final String restName;
  final String restCategory;
  final String restImage;
  final String restRating;
  final String minmumOrder;
  final String deliveryCost;
  final String deliveryTime;

  Restaurant({
    required this.restId,
    required this.restName,
    required this.restCategory,
    required this.restImage,
    required this.restRating,
    required this.minmumOrder,
    required this.deliveryCost,
    required this.deliveryTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'restId': restId,
      'restName': restName,
      'restCategory': restCategory,
      'restImage': restImage,
      'restRating': restRating,
      'minmumOrder': minmumOrder,
      'deliveryCost': deliveryCost,
      'deliveryTime': deliveryTime,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      restId: map['restId'],
      restName: map['restName'],
      restCategory: map['restCategory'],
      restImage: map['restImage'],
      restRating: map['restRating'],
      minmumOrder: map['minmumOrder'],
      deliveryCost: map['deliveryCost'],
      deliveryTime: map['deliveryTime'],
    );
  }

  static final List<Restaurant> restaurants = [
    Restaurant(
      restId: '1',
      restName: 'Boga',
      restCategory: 'Fast Food . Sandwiches',
      restImage: 'lib/images/BogaLogo.png',
      restRating: '4.5',
      minmumOrder: '15 SR',
      deliveryCost: '17 SR',
      deliveryTime: '20 - 30 minutes',
    ),
    Restaurant(
      restId: '2',
      restName: 'McDonald\'s',
      restCategory: 'Fast Food . American . Burgers',
      restImage: 'lib/images/McdonaldsLogo.png',
      restRating: '3.6',
      minmumOrder: '15 SR',
      deliveryCost: '16 SR',
      deliveryTime: '20 - 30 minutes',
    ),
    Restaurant(
      restId: '3',
      restName: 'LEGIT',
      restCategory: 'Desserts . Coffee',
      restImage: 'lib/images/LEGITLogo.png',
      restRating: '4.2',
      minmumOrder: '15 SR',
      deliveryCost: '16 SR',
      deliveryTime: '20 - 30 minutes',
    ),
  ];
}

class Meal {
  final String mealId;
  final String mealName;
  final String mealDescription;
  final String mealImage;
  final String mealPrice;
  final String restId;

  Meal({
    required this.mealId,
    required this.mealName,
    required this.mealDescription,
    required this.mealImage,
    required this.mealPrice,
    required this.restId,
  });

  Map<String, dynamic> toMap() {
    return {
      'mealId': mealId,
      'mealName': mealName,
      'mealDescription': mealDescription,
      'mealImage': mealImage,
      'mealPrice': mealPrice,
      'restId': restId,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      mealId: map['mealId'],
      mealName: map['mealName'],
      mealDescription: map['mealDescription'],
      mealImage: map['mealImage'],
      mealPrice: map['mealPrice'],
      restId: map['restId'],
    );
  }

  static final List<Meal> meals = [
    Meal(
      mealId: '1',
      mealName: 'Classic Chicken Sandwich',
      mealDescription: 'Grilled chicken with melted cheddar cheese , tomatoes and pickles.',
      mealImage:
          'https://hsaa.hsobjects.com/h/menuitems/images/000/795/677/443b762cdd53e9ae896a46af2da65546-size1200.jpg',
      mealPrice: '26 SR',
      restId: '1',
    ),
    Meal(
      mealId: '2',
      mealName: 'Chicken Pesto Sandwich',
      mealDescription: 'Grilled chicken with home made fresh pesto with melted mozzarella cheese and tomatoes.',
      mealImage:
          'https://hsaa.hsobjects.com/h/menuitems/images/000/795/679/d127159f0be6fce174e156d8c4882b18-size1200.jpg',
      mealPrice: '27 SR',
      restId: '1',
    ),
    Meal(
      mealId: '3',
      mealName: 'Chicken Club Sandwich',
      mealDescription: 'Grilled chicken with turkey over melted cheddar cheese, tomatoes and pickles.',
      mealImage: 'https://www.bogasa.com/wp-content/uploads/2020/12/CHICKEN-CLUB.png',
      mealPrice: '30 SR',
      restId: '1',
    ),
    Meal(
      mealId: '4',
      mealName: 'Mc Chicken Meal',
      mealDescription: '',
      mealImage:
          'https://hsaa.hsobjects.com/h/menuitems/images/000/795/677/443b762cdd53e9ae896a46af2da65546-size1200.jpg',
      mealPrice: '25 SR',
      restId: '2',
    ),
    Meal(
      mealId: '5',
      mealName: '9 Nuggets Meal',
      mealDescription: '',
      mealImage:
          'https://hsaa.hsobjects.com/h/menuitems/images/000/795/679/d127159f0be6fce174e156d8c4882b18-size1200.jpg',
      mealPrice: '26 SR',
      restId: '2',
    ),
    Meal(
      mealId: '6',
      mealName: 'Happy Meal Chicken With Fries',
      mealDescription: '',
      mealImage: 'https://www.bogasa.com/wp-content/uploads/2020/12/CHICKEN-CLUB.png',
      mealPrice: '17 SR',
      restId: '2',
    ),
    Meal(
      mealId: '7',
      mealName: 'French Toast',
      mealDescription: '',
      mealImage:
          'https://hsaa.hsobjects.com/h/menuitems/images/000/795/677/443b762cdd53e9ae896a46af2da65546-size1200.jpg',
      mealPrice: '22 SR',
      restId: '3',
    ),
    Meal(
      mealId: '8',
      mealName: 'Coffee Of The Day',
      mealDescription: '',
      mealImage:
          'https://hsaa.hsobjects.com/h/menuitems/images/000/795/679/d127159f0be6fce174e156d8c4882b18-size1200.jpg',
      mealPrice: '14 SR',
      restId: '3',
    ),
    Meal(
      mealId: '9',
      mealName: 'Ice Tea',
      mealDescription: '',
      mealImage: 'https://www.bogasa.com/wp-content/uploads/2020/12/CHICKEN-CLUB.png',
      mealPrice: '20 SR',
      restId: '3',
    ),
  ];
}
