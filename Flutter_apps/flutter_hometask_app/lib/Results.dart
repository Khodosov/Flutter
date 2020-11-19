import 'package:flutter/material.dart';

import 'ProductCard.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false,
      children: [
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
      ],
    );
  }
}
