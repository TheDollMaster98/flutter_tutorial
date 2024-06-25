// Model for the Product
class ProductModel {
  final String imageUrl;
  final String name;
  final double price;

  const ProductModel({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

final products = [
  const ProductModel(
    imageUrl:
        "https://www.jabra.com/-/media/Images/Products/Jabra-Elite-45h/Product/elite_45e_titanium_1.png?w=555&la=en&hash=9E7E1EDB2B8AD39710D02FBF1D3F896A9C87E14E",
    name: "WH-1000MX4",
    price: 120,
  ),
  const ProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0404/1101/products/MH40S2-W_Angle_800x800_04655dea-1957-41e8-96fb-a186f2d696b5_800x800.png?v=1630505212",
    name: "MH40",
    price: 375,
  ),
  const ProductModel(
    imageUrl: "https://m.media-amazon.com/images/I/61RGAsH2ljL._AC_SL1500_.jpg",
    name: "Raycon",
    price: 45,
  ),
  const ProductModel(
    imageUrl:
        "https://m.media-amazon.com/images/I/61Adsrt3RNL.__AC_SX300_SY300_QL70_ML2_.jpg",
    name: "JBL 700T",
    price: 70,
  ),
  const ProductModel(
    imageUrl:
        "https://orangeamps.com/wp-content/uploads/2016/03/Headphone-848x1030.png",
    name: "Orange O",
    price: 220,
  ),
  const ProductModel(
    imageUrl:
        "https://m.media-amazon.com/images/I/61t+rhJUsZL._AC_SY300_SX300_.jpg",
    name: "KL240",
    price: 447,
  ),
  const ProductModel(
    imageUrl:
        "https://m.media-amazon.com/images/I/71UfGaWasNL.__AC_SX300_SY300_QL70_ML2_.jpg",
    name: "Skullcandy",
    price: 250,
  ),
  const ProductModel(
    imageUrl:
        "https://www.tcl.com/usca/content/dam/tcl/products/headphones/720x480_0013_ELIT400BTBL_beauty.png",
    name: "TCL",
    price: 45,
  ),
];
