import 'package:flutter/material.dart';

class PastOrderCard extends StatelessWidget {
  const PastOrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 100,
      height: 140,
      child: Column(
        children: const [
          Placeholder(
            fallbackHeight: 80,
            fallbackWidth: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Restaurant',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Restaurant',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
