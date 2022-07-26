import 'package:first_app/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(MyTheme.darkBlue).make(),
        Row(
          children: [
            "Trending Products".text.gray600.medium.thin.make(),
            Icon(
              CupertinoIcons.tag_solid,
              size: 12.0,
              color: Color.fromARGB(255, 42, 45, 254),
            ).pOnly(left: 12)
          ],
        ),
      ],
    );
  }
}
