import 'package:first_app/models/catalog.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeProductDetail extends StatelessWidget {
  final Item catalog;

  const HomeProductDetail({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(catalog.image),
        ],
      ),
    );
  }
}
