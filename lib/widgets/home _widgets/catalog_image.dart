import 'package:first_app/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .color(context.backgroundColor)
        .make()
        .p8()
        .w40(context)
        .hFull(context);
  }
}
