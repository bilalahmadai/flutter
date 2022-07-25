import 'package:first_app/models/catalog.dart';
import 'package:first_app/utilis/routes.dart';
import 'package:first_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import 'package:matcher/matcher.dart';

import '../widgets/Drawer.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilal's 1st App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
