import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/product_quantity_actions.dart';

class QuantityAndPriceSection extends StatelessWidget {
  const QuantityAndPriceSection({
    super.key,
    required this.cartItem,
  });
  final CartItemEntity cartItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductQuantityActions(
          cartItem: cartItem,
        ),
        const Spacer(),
        Text(
          '${cartItem.calculateTotalPrice()} جنيه',
          style: TextStyles.bold16.copyWith(
            color: const Color(0xFFF4A91F),
          ),
        ),
      ],
    );
  }
}
