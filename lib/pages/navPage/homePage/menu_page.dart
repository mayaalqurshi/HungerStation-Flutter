import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project3/components/close_icon_button.dart';
import 'package:project3/components/homePage/restaurant/meal_card.dart';
import 'package:project3/components/homePage/restaurant/restaurant_info_card.dart';
import 'package:project3/models/restaurent_list.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({
    super.key,
    required this.restaurant,
  });
  final Restaurant restaurant;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Meal> meals = [];

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection('meals')
        .where(
          'restId',
          isEqualTo: widget.restaurant.restId,
        )
        .snapshots()
        .listen((collection) {
      final docs = collection.docs;
      List<Meal> newList = [];
      for (final doc in docs) {
        final mealFromDB = Meal.fromMap(doc.data());
        newList.add(mealFromDB);
      }
      meals = newList;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                const Placeholder(
                  fallbackHeight: 200,
                  fallbackWidth: 400,
                ),
                const SizedBox(
                  height: 80,
                ),
                for (final meal in meals) MealCard(meal: meal),
              ],
            ),
            const CloseIconButton(),
            RestaurantInfoCard(
              restaurant: widget.restaurant,
            ),
          ],
        ),
      ),
    );
  }
}
