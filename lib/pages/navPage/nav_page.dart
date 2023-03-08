import 'package:flutter/material.dart';
import 'package:project3/pages/navPage/homePage/home_page.dart';
import 'package:project3/pages/navPage/morePage/more_page.dart';
import 'package:project3/pages/navPage/offers_page.dart';
import 'package:project3/pages/navPage/orders_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentIndex = 0;
  static const List<Widget> pages = [
    HomePage(),
    OrdersPage(),
    OffersPage(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Offers'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onTap: (var index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        fixedColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
