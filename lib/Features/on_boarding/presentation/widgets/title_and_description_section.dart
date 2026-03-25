import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/on_boarding/domain/entities/on_boarding_page_view_entity.dart';

class TitleAndDescriptionSection extends StatelessWidget {
  const TitleAndDescriptionSection({
    super.key,
    required this.item,
  });

  final OnBoardingPageViewEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item.title,
        const SizedBox(
          height: 24,
        ),
        Text(
          item.description,
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xFF4E5556),
          ),
          textAlign: .center,
        ),
      ],
    );
  }
}
