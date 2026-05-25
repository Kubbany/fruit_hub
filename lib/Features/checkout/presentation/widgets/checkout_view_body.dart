import 'package:flutter/material.dart';

import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/checkout_steps.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        CustomAppBar(
          title: 'الشحن',
        ),
        SizedBox(
          height: 16,
        ),
        CheckoutSteps(
          isActive: false,
        ),
      ],
    );
  }
}
