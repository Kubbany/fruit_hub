import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_cubit/cart_cubit.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log(context.watch<CartCubit>().cart.cartItems.length.toString());
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      color: const Color(0xFFEBF9F1),
      width: .infinity,
      child: Text(
        'لديك ${context.watch<CartCubit>().cart.cartItems.length} منتجات في سلة التسوق',
        style: TextStyles.regular13.copyWith(
          color: AppColors.primaryColor,
        ),
        textAlign: .center,
      ),
    );
  }
}
