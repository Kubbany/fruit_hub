import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/product_quantity_actions.dart';

class QuantityAndPriceSection extends StatelessWidget {
  const QuantityAndPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProductQuantityActions(),
        const Spacer(),
        Text(
          '60 جنيه',
          style: TextStyles.bold16.copyWith(
            color: const Color(0xFFF4A91F),
          ),
        ),
      ],
    );
  }
}
