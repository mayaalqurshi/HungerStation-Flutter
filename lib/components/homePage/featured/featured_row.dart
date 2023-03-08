import 'package:flutter/material.dart';
import 'package:project3/components/homePage/featured/featured_card.dart';

class FeaturedRow extends StatelessWidget {
  const FeaturedRow({
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
            'Featured',
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
                FeaturedCard(),
                SizedBox(
                  width: 10,
                ),
                FeaturedCard(),
                SizedBox(
                  width: 10,
                ),
                FeaturedCard(),
                SizedBox(
                  width: 10,
                ),
                FeaturedCard(),
                SizedBox(
                  width: 10,
                ),
                FeaturedCard(),
                SizedBox(
                  width: 10,
                ),
                FeaturedCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
