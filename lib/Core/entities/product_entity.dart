import 'package:equatable/equatable.dart';
import 'package:fruit_hub/core/entities/review_entity.dart';

class ProductEntity extends Equatable {
  final String name, code, description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final int unitAmount;
  num avgRating = 0;
  num ratingCount = 0;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.reviews,
    required this.isFeatured,
    this.isOrganic = false,
    this.imageUrl,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
  });

  @override
  List<Object?> get props => [code];
}
