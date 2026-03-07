import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_dots_indicator.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_page_view_entity.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/on_boarding_page_view_builder.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/visibilty_skip_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentPage = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: OnBoardingPageViewBuilder(
            pageController: pageController,
          ),
        ),
        CustomDotsIndicator(
          dotsCount: onBoardingPageViewList.length,
          activeColor: AppColors.primaryColor,
          color: AppColors.primaryColor.withAlpha(127),
          margin: 5,
          size: 11,
          currentPage: currentPage,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 29,
            left: 16,
            right: 16,
            bottom: 43,
          ),
          child: VisibiltySkipButton(
            currentPage: currentPage,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
