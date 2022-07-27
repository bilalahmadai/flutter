import 'package:first_app/models/catalog.dart';
import 'package:first_app/pages/home_Product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            hoverColor: null,
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeProductDetail(catalog: catalog),
                )),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
