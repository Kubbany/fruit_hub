import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';

class CartImageCard extends StatelessWidget {
  const CartImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 93,
      decoration: const BoxDecoration(
        color: Color(0xFFF3F5F7),
      ),
      child: Center(
        child: Image.asset(
          Assets.imagesWatermelonTest,
          width: 53,
          height: 40,
        ),
      ),
    );
  }
}
