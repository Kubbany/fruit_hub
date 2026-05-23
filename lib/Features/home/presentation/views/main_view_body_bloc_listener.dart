import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/show_snack_bar_message.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/main_view_body.dart';

class MainViewBodyBlocListener extends StatelessWidget {
  const MainViewBodyBlocListener({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemRemoved) {
          showSnackBarMessage(
            context,
            'تم حذف المنتج من السلة',
            AppColors.lightPrimaryColor,
          );
        } else if (state is CartItemAdded) {
          showSnackBarMessage(
            context,
            'تم اضافة المنتج الى السلة',
            AppColors.lightPrimaryColor,
          );
        }
      },

      child: MainViewBody(currentViewIndex: currentViewIndex),
    );
  }
}
