import 'dart:js';

import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/theme.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");

    final decodedData = jsonDecode(catalogJson);

    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            color: Colors.cyanAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
               
              ],
            )),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(MyTheme.darkBlue).make(),
        Row(
          children: [
            Icon(CupertinoIcons.tag_solid, size: 10.0).pOnly(right: 12),
            "Trending Products".text.medium.thin.make(),
          ],
        ),
      ],
    );
  }
}
