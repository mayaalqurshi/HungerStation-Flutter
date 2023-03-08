import 'package:flutter/material.dart';
import 'package:project3/models/start_order_list.dart';
import 'package:project3/pages/navPage/homePage/restaurants_page.dart';

class StartOrderCard extends StatefulWidget {
  const StartOrderCard({
    Key? key,
    required this.start,
  }) : super(key: key);
  final StartOrderList start;
  @override
  State<StartOrderCard> createState() => _StartOrderCardState();
}

class _StartOrderCardState extends State<StartOrderCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RestaurantsPage(),
          ),
        );
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        width: 120,
        height: 120,
        child: Column(
          children: [
            Image.network(
              widget.start.startOrderImage,
              width: 120,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.start.startOrderTitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
