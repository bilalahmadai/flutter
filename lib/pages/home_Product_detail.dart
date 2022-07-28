import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/theme.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeProductDetail extends StatelessWidget {
  final Item catalog;

  const HomeProductDetail({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: context.backgroundColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl3.color(MyTheme.tomato).make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder()),
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.accentColor)),
                    child: "Add to Cart".text.make())
                .wh(150, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image).h32(context))
                .p16(),
            Expanded(
                child: VxArc(
              height: 20,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.color(context.primaryColor).make(),
                    "Duo tempor eirmod kasd ea sit. Sit sed sed rebum ut amet duo. Aliquyam et ipsum dolor duo diam eos et, consetetur amet vero sadipscing."
                        .text
                        .color(context.primaryColor)
                        .make()
                  ],
                ).p24(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
