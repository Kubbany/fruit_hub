import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/welcome_title_widget.dart';
import 'package:fruit_hub/Core/utils/constants/assets.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';

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
}

List<OnBoardingPageViewEntity> onBoardingPageViewList = [
  OnBoardingPageViewEntity(
    backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
    image: Assets.imagesPageViewItem1Image,
    title: const WelcomeTitleWidget(),
    description: AppStrings.onBoardingPage1Description,
  ),
  OnBoardingPageViewEntity(
    backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
    image: Assets.imagesPageViewItem2Image,
    title: const Text(
      AppStrings.onBoardingPage2Title,
      style: TextStyles.bold23,
    ),
    description: AppStrings.onBoardingPage2Description,
  ),
];
