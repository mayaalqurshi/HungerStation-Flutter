import 'package:flutter/material.dart';
import 'package:project3/components/homePage/dailyOffers/delivery_fee_card.dart';
import 'package:project3/models/daily_offers_list.dart';

class DailyOffersRow extends StatelessWidget {
  const DailyOffersRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffE0E0E0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Daily offers',
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
                children: [
                  for (final offer in DailyOffersList.offers)
                    Row(
                      children: [
                        DeliveryFeeCard(
                          offer: offer,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
