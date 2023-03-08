import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          // here the restaurant logo
          Column(
            children: const [
              Placeholder(
                fallbackHeight: 200,
                fallbackWidth: 400,
              ),
              Text('Special Offer'),
              Text(
                'Restaurant',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
