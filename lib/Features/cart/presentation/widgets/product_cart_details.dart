import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/assets.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/quantity_and_price_section.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProductCartDetails extends StatelessWidget {
  const ProductCartDetails({
    super.key,
    required this.cartItem,
  });
  final CartItemEntity cartItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            spacing: 12,
            crossAxisAlignment: .start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    cartItem.product.name,
                    style: TextStyles.bold13,
                  ),
                  const Spacer(),
                  SvgPicture.asset(Assets.imagesTrash),
                ],
              ),
              Text(
                '${cartItem.calculateTotalWeight()} كجم',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFFF4A91F),
                ),
              ),
              QuantityAndPriceSection(
                cartItem: cartItem,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
