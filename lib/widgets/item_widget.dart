import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
 
  const ItemWidget({super.key, required this.item}) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(color: Colors.deepOrange),
          textScaleFactor: 1.6,
        ),
      ),
    );
  }
}
