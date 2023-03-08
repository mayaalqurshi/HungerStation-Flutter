import 'package:flutter/material.dart';
import 'package:project3/models/daily_offers_list.dart';

class DeliveryFeeCard extends StatefulWidget {
  const DeliveryFeeCard({
    Key? key,
    required this.offer,
  }) : super(key: key);
  final DailyOffersList offer;
  @override
  State<DeliveryFeeCard> createState() => _DeliveryFeeCardState();
}

class _DeliveryFeeCardState extends State<DeliveryFeeCard> {
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
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.offer.offerName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const Placeholder(
            fallbackHeight: 60,
            fallbackWidth: 80,
          ),
        ],
      ),
    );
  }
}
