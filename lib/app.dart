import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project3/models/restaurent_list.dart';
import 'package:project3/pages/navPage/nav_page.dart';
import 'package:project3/pages/otherPages/login_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((user) {
      isLoggedIn = user != null;
      setState(() {});
    });

    for (final rest in Restaurant.restaurants) {
      FirebaseFirestore.instance.collection('restaurant').doc(rest.restId).set(rest.toMap());
    }

    for (final meal in Meal.meals) {
      FirebaseFirestore.instance.collection('meals').doc(meal.mealId).set(meal.toMap());
    }
    getRestaurant();
  }

  getRestaurant() async {
    final list = await FirebaseFirestore.instance.collection('restaurant').get();
    List<Restaurant> newList = [];
    for (final doc in list.docs) {
      final restaurant = Restaurant.fromMap(doc.data());
      newList.add(restaurant);
    }
    print(newList);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isLoggedIn ? const NavPage() : const LoginPage(),
    );
  }
}
