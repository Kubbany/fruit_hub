import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            spacing: 16,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: CustomAppBar(title: 'السلة'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                color: const Color(0xFFEBF9F1),
                width: .infinity,
                height: 41,
                child: Text(
                  'لديك 3 منتجات في سلة التسوق',
                  style: TextStyles.regular13.copyWith(
                    color: AppColors.primaryColor,
                  ),
                  textAlign: .center,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const CartItem(),
            ],
          ),
        ),
      ],
    );
  }
}
