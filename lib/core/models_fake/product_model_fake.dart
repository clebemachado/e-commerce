// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

import 'package:story_app/core/dados_faker.dart';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

List<Product> relatedItem(int i) {
  List<Product> listProduct = [];
  for (var element in produtosGerais) {
    if (element["categoria"] == i) {
      listProduct.add(Product.fromJson(element));
    }
  }
  return listProduct;
}

class Product {
  String title;
  String description;
  double price;
  int categoria;
  bool popular;
  Rating rating;
  List<String> images;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.categoria,
    required this.popular,
    required this.rating,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        title: json["title"],
        description: json["description"],
        price: json["price"].toDouble(),
        categoria: json["categoria"],
        popular: json["popular"],
        rating: Rating.fromJson(json["rating"]),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "price": price,
        "popular": popular,
        "categoria": categoria,
        "rating": rating.toJson(),
        "images": List<dynamic>.from(images.map((x) => x)),
      };

  @override
  String toString() {
    return "Product({title: $title})";
  }
}

class Rating {
  Rating({
    required this.count,
    required this.rating,
  });

  int count;
  double rating;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        count: json["count"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "rating": rating,
      };
}
