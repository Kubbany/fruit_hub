import 'package:flutter/material.dart';

import 'package:fruit_hub/features/cart/presentation/widgets/cart_image_card.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/product_cart_details.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.5, vertical: 3),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            width: 1,
            color: Color(0x66CACECE),
          ),
        ),
      ),
      child: const Row(
        children: <Widget>[
          CartImageCard(),
          SizedBox(
            width: 17,
          ),
          Expanded(
            child: ProductCartDetails(),
          ),
        ],
      ),
    );
  }
}
