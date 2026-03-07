import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';

class WelcomeTitleWidget extends StatelessWidget {
  const WelcomeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: AppStrings.onBoardingPage1Title1,
        style: TextStyles.bold23.copyWith(
          color: AppColors.headerColor,
        ),
        children: [
          TextSpan(
            text: AppStrings.onBoardingPage1Title2,
            style: TextStyles.bold23.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: AppStrings.onBoardingPage1Title3,
            style: TextStyles.bold23.copyWith(
              color: const Color(0xFFE9AA25),
            ),
          ),
        ],
      ),
    );
  }
}
