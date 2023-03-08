import 'package:flutter/material.dart';
import 'package:project3/components/homePage/pastOrders/past_order_card.dart';

class PastOrdersRow extends StatelessWidget {
  const PastOrdersRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Past orders',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                PastOrderCard(),
                SizedBox(
                  width: 10,
                ),
                PastOrderCard(),
                SizedBox(
                  width: 10,
                ),
                PastOrderCard(),
                SizedBox(
                  width: 10,
                ),
                PastOrderCard(),
                SizedBox(
                  width: 10,
                ),
                PastOrderCard(),
                SizedBox(
                  width: 10,
                ),
                PastOrderCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
