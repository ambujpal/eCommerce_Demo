import 'dart:convert';

List<ProductResponseModel> productResponseModelFromJson(String str) =>
    List<ProductResponseModel>.from(
        json.decode(str).map((x) => ProductResponseModel.fromJson(x)));

String productResponseModelToJson(ProductResponseModel data) =>
    json.encode(data.toJson());

class ProductResponseModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductResponseModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      ProductResponseModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"], // Directly using string instead of enum
        image: json["image"],
        rating: json["rating"] != null ? Rating.fromJson(json["rating"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category, // No enum conversion needed
        "image": image,
        "rating": rating?.toJson(),
      };
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
