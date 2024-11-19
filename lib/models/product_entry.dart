// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

// Function to convert JSON string to a list of ProductEntry objects
List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(
    json.decode(str).map((x) => ProductEntry.fromJson(x)));

// Function to convert a list of ProductEntry objects to JSON string
String productEntryToJson(List<ProductEntry> data) => json.encode(
    List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String model;
  String pk;
  Fields fields;

  ProductEntry({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"] ?? "", // Default to an empty string if null
        pk: json["pk"] ?? "", // Default to an empty string if null
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int price;
  String description;
  int rating;

  Fields({
    required this.user,
    required this.name,
    required this.price,
    required this.description,
    required this.rating,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"] ?? 0, // Default to 0 if null
        name: json["name"] ?? "", // Default to an empty string if null
        price: json["price"] ?? 0, // Default to 0 if null
        description: json["description"] ?? "", // Default to an empty string if null
        rating: json["rating"] ?? 0, // Default to 0 if null
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "rating": rating,
      };
}
