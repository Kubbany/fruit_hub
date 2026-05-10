import 'package:fruit_hub/core/entities/review_entity.dart';

class ReviewModel {
  final String name, image, date, reviewDescription;
  final num rating;

  ReviewModel({
    required this.name,
    required this.image,
    required this.date,
    required this.reviewDescription,
    required this.rating,
  });

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name,
      image: reviewEntity.image,
      date: reviewEntity.date,
      reviewDescription: reviewEntity.reviewDescription,
      rating: reviewEntity.rating,
    );
  }

  factory ReviewModel.fromJson(Map<String, Object> json) => ReviewModel(
    name: json['name'] as String,
    image: json['image'] as String,
    date: json['date'] as String,
    reviewDescription: json['reviewDescription'] as String,
    rating: json['rating'] as num,
  );

  ReviewEntity toEntity() => ReviewEntity(
    name: name,
    image: image,
    date: date,
    reviewDescription: reviewDescription,
    rating: rating,
  );
  Map<String, Object> toJson() => {
    'name': name,
    'image': image,
    'date': date,
    'reviewDescription': reviewDescription,
    'rating': rating,
  };
}
