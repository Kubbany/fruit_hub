import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/constants/strings.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';

class WelcomeTitleWidget extends StatelessWidget {
  const WelcomeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: context.tr.welcome_at,
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
