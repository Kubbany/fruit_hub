import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hub/features/checkout/presentation/views/checkout_view.dart';

class CustomCartPriceButton extends StatelessWidget {
  const CustomCartPriceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, CheckoutView.routeName);
          },
          title:
              'الدفع ${context.watch<CartCubit>().cart.calculateTotalPrice()} جنيه',
        );
      },
    );
  }
}
