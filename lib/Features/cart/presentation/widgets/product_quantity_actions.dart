import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/widgets/custom_circular_button.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';

class ProductQuantityActions extends StatefulWidget {
  const ProductQuantityActions({
    super.key,
    required this.cartItem,
  });
  final CartItemEntity cartItem;

  @override
  State<ProductQuantityActions> createState() => _ProductQuantityActionsState();
}

class _ProductQuantityActionsState extends State<ProductQuantityActions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: <Widget>[
        CustomCircularButton(
          onTap: () {
            setState(() {
              widget.cartItem.count++;
            });
          },
          icon: Icons.add,
          iconColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          buttonRadius: 12,
          iconSize: 18,
        ),
        Text(
          widget.cartItem.count.toString(),
          style: TextStyles.bold16,
        ),
        CustomCircularButton(
          onTap: () {
            setState(() {
              widget.cartItem.count--;
            });
          },
          icon: Icons.remove,
          iconColor: const Color(0xFF979899),
          backgroundColor: const Color(0xFFF3F5F7),
          buttonRadius: 12,
          iconSize: 18,
        ),
      ],
    );
  }
}
