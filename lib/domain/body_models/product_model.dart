class Product {
  final dynamic factoryId;
  final dynamic name;
  final dynamic category;
  final dynamic subcategory;
  final dynamic productBrand;
  final dynamic minPrice;
  final dynamic maxPrice;
  final dynamic setSize;
  final dynamic setColor;
  final dynamic noOfPairs;

  Product({
    required this.factoryId,
    required this.name,
    required this.category,
    required this.subcategory,
    required this.productBrand,
    required this.minPrice,
    required this.maxPrice,
    required this.setSize,
    required this.setColor,
    required this.noOfPairs,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      factoryId: json['factoryId'],
      name: json['name'],
      category: json['category'],
      subcategory: json['subcategory'],
      productBrand: json['productBrand'],
      minPrice: json['minPrice'],
      maxPrice: json['maxPrice'],
      setSize: json['setSize'],
      setColor: json['setColor'],
      noOfPairs: json['noOfPairs'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'factoryId': factoryId,
      'name': name,
      'category': category,
      'subcategory': subcategory,
      'productBrand': productBrand,
      'minPrice': minPrice,
      'maxPrice': maxPrice,
      'setSize': setSize,
      'setColor': setColor,
      'noOfPairs': noOfPairs,
    };
  }
}
