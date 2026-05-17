import 'package:flutter/material.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_item.dart';

class CartItemsSliverListView extends StatelessWidget {
  const CartItemsSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const CartItem(),
      itemCount: 20,
    );
  }
}
