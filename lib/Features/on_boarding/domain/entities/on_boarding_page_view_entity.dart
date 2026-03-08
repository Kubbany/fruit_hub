import 'package:flutter/material.dart';

class OnBoardingPageViewEntity {
  final String backgroundImage;
  final String image;
  final Widget title;
  final String description;

  OnBoardingPageViewEntity({
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.description,
  });

  static late List<OnBoardingPageViewEntity> onBoardingPageViewList;
}
