import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      color: const Color(0xFFEBF9F1),
      width: .infinity,
      child: Text(
        'لديك 3 منتجات في سلة التسوق',
        style: TextStyles.regular13.copyWith(
          color: AppColors.primaryColor,
        ),
        textAlign: .center,
      ),
    );
  }
}
