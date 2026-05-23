import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/cart/presentation/view/cart_view_body_bloc_builder.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = AppRoutes.cartView;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: CartViewBodyBlocBuilder(),
    );
  }
}
