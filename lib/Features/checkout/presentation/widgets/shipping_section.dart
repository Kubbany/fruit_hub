import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/shipping_item.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 8,
      children: [
        ShippingItem(),
        ShippingItem(),
      ],
    );
  }
}
