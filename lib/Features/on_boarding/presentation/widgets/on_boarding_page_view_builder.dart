import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/domain/entities/on_boarding_page_view_entity.dart';
import 'package:fruit_hub/features/on_boarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageViewBuilder extends StatelessWidget {
  const OnBoardingPageViewBuilder({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        return PageViewItem(
          item: OnBoardingPageViewEntity.onBoardingPageViewList[index],
          index: index,
        );
      },
      itemCount: OnBoardingPageViewEntity.onBoardingPageViewList.length,
    );
  }
}
