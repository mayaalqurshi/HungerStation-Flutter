import 'package:flutter/material.dart';
import 'package:project3/components/homePage/dailyOffers/daily_offers_row.dart';
import 'package:project3/components/homePage/delivery_and_balace_section.dart';
import 'package:project3/components/homePage/featured/featured_row.dart';
import 'package:project3/components/homePage/free_delivery_card.dart';
import 'package:project3/components/homePage/pastOrders/past_orders_row.dart';
import 'package:project3/components/homePage/search_card.dart';
import 'package:project3/components/homePage/startOrder/start_order_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 197, 234, 239),
            ),
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 30,
                  ),
                  DeliveryAndBalaceSection(),
                  SizedBox(
                    height: 16,
                  ),
                  SearchCard(),
                  SizedBox(
                    height: 10,
                  ),
                  FreeDeliveryCard(),
                ],
              ),
            ),
          ),
          const StartOrderRow(),
          const DailyOffersRow(),
          const PastOrdersRow(),
          const FeaturedRow(),
        ],
      ),
    );
  }
}
