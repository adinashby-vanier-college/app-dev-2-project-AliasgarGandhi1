class ProductClass {
  // static String productId = "";
  // static String brand = "";
  // static String category = "";
  // static String size = "";
  // static String price = "";
  String productId, brand, category, model;
  int size;
  double price;

  static Map productMap = new Map();
  static List productList = [];

  ProductClass(this.productId, this.brand, this.category, this.model, this.price, this.size);
}
