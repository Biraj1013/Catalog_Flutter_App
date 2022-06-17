class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple Iphone 1th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://www.google.com/search?q=iphone+12&sxsrf=ALiCzsZOKw_cYGHaWTeEmS3_FvfNmxApxQ:1655219032608&tbm=isch&source=iu&ictx=1&vet=1&fir=PD46VlzFLFR3-M%252Cyh2FK-9OA6Wi3M%252C_%253BPW_g7Hj8c67X0M%252CUi6ZMS0TkYl2hM%252C_%253BmNd6FozzT7ogiM%252CH4VTx-TtpWoMxM%252C_%253BwbL-8PEP3l0REM%252ChHVyzDc8vzN_tM%252C_%253BklJcDd3NQetTeM%252CjbfXt0yRawZ8lM%252C_%253Bl9fLCKBImoRnEM%252CzdB3Myj_7z98IM%252C_%253BMlwfKFZ-fpEEmM%252C1BFn-chMJTlfnM%252C_%253B24NAgW4SkiFmMM%252Cx-8KQOkUzrLrCM%252C_%253B49TTPkJs_tGNVM%252CH4VTx-TtpWoMxM%252C_%253BvqKip3Sym_zySM%252CEJoMgBNjKIUm_M%252C_%253B0NceJ06qy9dKjM%252C3C_jgfxUrq5sVM%252C_%253BStH_C94eP09ViM%252CPBTV3TrY64Q5lM%252C_%253Bnh0qY3I442ckIM%252C5CxLWe7mn57fDM%252C_%253B6Nyafa6ZEJHNqM%252CdmFyBRTeuyiqkM%252C_%253BSa5uMKgnZYnrMM%252C9NUKSBeqasKC9M%252C_&usg=AI4_-kT1oj0rPQs00kdvAGjKqyUCHeS5eQ&sa=X&ved=2ahUKEwiJ0dqzm634AhXIR2wGHbDFDoMQ9QF6BAgJEAE&biw=681&bih=651&dpr=1#imgrc=49TTPkJs_tGNVM"),
  ];

  // Get Item by ID
  Item getById(int id) => items.firstWhere(
        (element) => element.id == id,
      );

  // Get Item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id = 1,
      this.name = "Iphone12",
      this.desc = "Apple Iphone 1th generation",
      this.price = 999,
      this.color = "#33505a",
      this.image = "https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg"});
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}

final items = [
  Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple Iphone 1th generation",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg"),
];
