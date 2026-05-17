import 'package:flutter/material.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_item.dart';

class CartItemsSliverListView extends StatelessWidget {
  const CartItemsSliverListView({super.key, required this.cartItems});
  final List<CartItemEntity> cartItems;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => CartItem(
        cartItem: cartItems[index],
      ),
      itemCount: cartItems.length,
    );
  }
}
