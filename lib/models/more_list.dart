import 'package:flutter/material.dart';

class MoreList {
  final String moreTitle;
  final IconData moreIcon;

  MoreList(this.moreTitle, this.moreIcon);
}

class MoreData {
  static List<MoreList> more = [
    MoreList('Referral Code', Icons.star),
    MoreList('My Profile', Icons.person),
    MoreList('My Vouchers', Icons.local_offer),
    MoreList('HPlus', Icons.add),
    MoreList('Payment Options', Icons.wallet),
    MoreList('Invoices', Icons.article),
    MoreList('Customer Service', Icons.phone),
    MoreList('Settings', Icons.settings),
  ];
}
