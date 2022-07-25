class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12",
        desc: "next generation iPhone",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1JgQmghBY4u845hbza4APFvGr-Eq8Mcs-NdzPsOR_&s")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
