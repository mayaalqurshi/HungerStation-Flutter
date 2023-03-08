import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project3/components/homePage/restaurant/restaurant_card.dart';
import 'package:project3/models/restaurent_list.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<Restaurant> restaurants = [];

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance.collection('restaurant').snapshots().listen((collection) {
      log('col count: ${collection.docs.length}');
      List<Restaurant> newList = [];
      for (final doc in collection.docs) {
        final restaurant = Restaurant.fromMap(doc.data());
        newList.add(restaurant);
      }
      restaurants = newList;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    log('Count: ${restaurants.length}');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 35,
            color: Colors.black,
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            for (final restaurant in restaurants)
              Column(
                children: [
                  RestaurantCard(
                    restaurant: restaurant,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
