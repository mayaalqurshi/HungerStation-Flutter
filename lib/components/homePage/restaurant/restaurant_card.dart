import 'package:flutter/material.dart';
import 'package:project3/models/restaurent_list.dart';
import 'package:project3/pages/navPage/homePage/menu_page.dart';

class RestaurantCard extends StatefulWidget {
  const RestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);
  final Restaurant restaurant;
  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // for (final menu in RestaurantList.restaurants)
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuPage(
                  restaurant: widget.restaurant,
                ),
              ),
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.restaurant.restImage,
                  height: 100,
                  width: 400,
                ),
                Text(
                  widget.restaurant.restName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.restaurant.restCategory,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.restaurant.deliveryTime,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
