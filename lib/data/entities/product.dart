class Product {
  int id;
  String title;
  String category;
  String thumbnail;
  int stock;
  int price;
  double rating;
  double discountPercentage;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.thumbnail,
    required this.stock,
    required this.price,
    required this.rating,
    required this.discountPercentage,
  });

  factory Product.fromJson(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      category: map['category'],
      thumbnail: map['thumbnail'],
      stock: map['stock'],
      price: map['price'],
      rating: (map['rating'] is int)
          ? (map['rating'] as int).toDouble()
          : map['rating'],
      discountPercentage: (map['discountPercentage'] is int)
          ? (map['discountPercentage'] as int).toDouble()
          : map['discountPercentage']
    );
  }
}
