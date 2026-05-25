import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';

import 'package:fruit_hub/features/checkout/presentation/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});
  static const String routeName = AppRoutes.checkoutView;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: CheckoutViewBody(),
      ),
    );
  }
}
