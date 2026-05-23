import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_item_cubit/cart_item_cubit.dart';

import 'package:fruit_hub/features/cart/presentation/widgets/cart_image_card.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/product_cart_details.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});
  final CartItemEntity cartItem;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdated) {
          if (current.cartItemEntity == cartItem) return true;
        }
        return false;
      },
      builder: (context, state) {
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
          child: Row(
            children: <Widget>[
              CartImageCard(
                image: cartItem.product.imageUrl!,
              ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: ProductCartDetails(
                  cartItem: cartItem,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
