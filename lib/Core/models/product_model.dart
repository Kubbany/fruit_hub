import 'dart:io';

import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/models/review_model.dart';

class ProductModel {
  final String name, code, description;
  final num price;
  final List<ReviewModel> reviews;
  final bool isFeatured;
  final File image;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final int unitAmount;
  final int sellingCount;
  final num avgRating = 0;
  final num ratingCount = 0;
  ProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.reviews,
    required this.isFeatured,
    required this.image,
    this.imageUrl,
    this.isOrganic = false,
    this.sellingCount = 0,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      name: data['name'] as String,
      code: data['code'] as String,
      description: data['description'] as String,
      price: data['price'] as num,
      reviews: data['reviews'] != null
          ? List<ReviewModel>.from(
              data['reviews']!.map(
                (e) => ReviewModel.fromJson(e),
              ),
            )
          : [],
      isFeatured: data['isFeatured'] as bool,
      image: File(data['image'] as String),
      imageUrl: data['imageUrl'] as String?,
      isOrganic: data['isOrganic'] as bool,
      expirationMonths: data['expirationMonths'] as int,
      numOfCalories: data['numOfCalories'] as int,
      unitAmount: data['unitAmount'] as int,
      sellingCount: data['sellingCount'] as int,
    );
  }

  ProductEntity toEntity() => ProductEntity(
    name: name,
    code: code,
    description: description,
    price: price,
    reviews: reviews.map((e) => e.toEntity()).toList(),
    isFeatured: isFeatured,
    image: image,
    isOrganic: isOrganic,
    expirationMonths: expirationMonths,
    numOfCalories: numOfCalories,
    unitAmount: unitAmount,
  );

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'sellingCount': sellingCount,
      'reviews': reviews.map((e) => e.toJson()).toList(),
      'isFeatured': isFeatured,
      'isOrganic': isOrganic,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'numOfCalories': numOfCalories,
      'unitAmount': unitAmount,
    };
  }
}
