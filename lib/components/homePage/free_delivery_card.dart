import 'package:flutter/material.dart';
import 'package:project3/pages/navPage/morePage/h_plus_page.dart';

class FreeDeliveryCard extends StatelessWidget {
  const FreeDeliveryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Unlimited free delivery \nstarting at 9 SR/Month',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HPlusPage(),
                  ),
                );
              },
              child: const Text(
                'Subscribe Now',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Image.asset(
          'lib/images/logo.png',
          width: 160,
          height: 100,
        ),
      ],
    );
  }
}
