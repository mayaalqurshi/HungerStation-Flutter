import 'package:flutter/material.dart';
import 'package:project3/components/offerPage/offer_card.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: const Text(
          'Offers',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            OfferCard(),
            SizedBox(
              height: 20,
            ),
            OfferCard(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
