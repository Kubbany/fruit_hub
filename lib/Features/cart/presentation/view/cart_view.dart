import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = AppRoutes.cartView;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartItemCubit(),
      child: const Scaffold(
        backgroundColor: Color(0xFFFEFEFE),
        body: CartViewBody(),
      ),
    );
  }
}
