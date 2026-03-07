import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_page_view_entity.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageViewBuilder extends StatelessWidget {
  const OnBoardingPageViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return PageViewItem(
          item: onBoardingPageViewList[index],
          index: index,
        );
      },
      itemCount: onBoardingPageViewList.length,
    );
  }
}
