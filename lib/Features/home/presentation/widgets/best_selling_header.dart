import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          'الأكثر مبيعًا',
          style: TextStyles.bold16,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'المزيد',
            style: TextStyles.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
        ),
      ],
    );
  }
}
