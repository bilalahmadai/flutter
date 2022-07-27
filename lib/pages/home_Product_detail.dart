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
      appBar: AppBar(),
      backgroundColor: MyTheme.lightSilver,
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 142, 157, 178),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl3.color(MyTheme.tomato).make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBlue)),
                    child: "Buy".text.make())
                .wh(100, 50)
          ],
        ).p24(),
      ).cornerRadius(20),
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
                color: Colors.red,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkBlue).bold.make(),
                    catalog.desc.text.xl.make(),
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
