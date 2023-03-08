import 'package:flutter/material.dart';

class HPlusPage extends StatelessWidget {
  const HPlusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(12),
        child: Text('HPlus Page'),
      )),
    );
  }
}
