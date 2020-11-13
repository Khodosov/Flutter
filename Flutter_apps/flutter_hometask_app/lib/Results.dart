import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/results.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
