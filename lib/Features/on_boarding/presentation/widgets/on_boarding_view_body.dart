import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_page_view_entity.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/on_boarding_page_view_builder.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Expanded(
          child: OnBoardingPageViewBuilder(),
        ),
        DotsIndicator(
          dotsCount: onBoardingPageViewList.length,
          position: 0,
          decorator: const DotsDecorator(
            color: AppColors.lightPrimaryColor,
            activeColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
