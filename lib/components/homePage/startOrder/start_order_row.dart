import 'package:flutter/material.dart';
import 'package:project3/components/homePage/startOrder/start_order_card.dart';
import 'package:project3/models/start_order_list.dart';

class StartOrderRow extends StatelessWidget {
  const StartOrderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What would you like to order, Maya?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (final start in StartOrderList.order)
                StartOrderCard(
                  start: start,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
