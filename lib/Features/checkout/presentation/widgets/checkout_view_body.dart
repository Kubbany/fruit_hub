import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';

import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/checkout_page_view.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/checkout_steps.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        const CustomAppBar(
          title: 'الشحن',
        ),
        const SizedBox(
          height: 16,
        ),
        const CheckoutSteps(
          isActive: false,
        ),
        const SizedBox(
          height: 32,
        ),
        const Expanded(
          child: CheckoutPageView(),
        ),
        const SizedBox(
          height: 92,
        ),
        CustomButton(
          onPressed: () {},
          title: 'التالي',
        ),
        const SizedBox(
          height: 312,
        ),
      ],
    );
  }
}
