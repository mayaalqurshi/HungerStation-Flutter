import 'package:flutter/material.dart';
import 'package:project3/components/homePage/balance_card.dart';
import 'package:project3/components/homePage/deliver_to_card.dart';

class DeliveryAndBalaceSection extends StatelessWidget {
  const DeliveryAndBalaceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        DeliverToCard(),
        BalanceCard(),
      ],
    );
  }
}
