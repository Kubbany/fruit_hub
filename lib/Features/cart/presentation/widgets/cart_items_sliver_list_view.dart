import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fruit_hub/features/cart/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_item.dart';

class CartItemsSliverListView extends StatelessWidget {
  const CartItemsSliverListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => CartItem(
        cartItem: context.watch<CartCubit>().cart.cartItems[index],
      ),
      itemCount: context.watch<CartCubit>().cart.cartItems.length,
    );
  }
}
