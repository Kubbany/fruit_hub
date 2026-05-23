import 'package:flutter/material.dart';
import 'package:fruit_hub/features/cart/presentation/view/cart_view.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import 'package:fruit_hub/features/products/presentation/view/products_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: [
        const HomeView(),
        const ProductsView(),
        const CartView(),
      ],
    );
  }
}
