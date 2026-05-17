import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_header.dart';
import 'package:fruit_hub/features/cart/presentation/widgets/cart_items_sliver_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                spacing: 16,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: CustomAppBar(title: 'السلة'),
                  ),
                  CartHeader(),
                  SizedBox(
                    height: 7,
                  ),
                ],
              ),
            ),
            CartItemsSliverListView(
              cartItems: [],
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * 0.07,
          child: CustomButton(onPressed: () {}, title: 'الدفع 120 جنيه'),
        ),
      ],
    );
  }
}
