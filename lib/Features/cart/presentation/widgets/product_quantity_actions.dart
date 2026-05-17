import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/widgets/custom_circular_button.dart';

class ProductQuantityActions extends StatelessWidget {
  const ProductQuantityActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 15,
      children: <Widget>[
        CustomCircularButton(
          icon: Icons.add,
          iconColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          buttonRadius: 12,
          iconSize: 18,
        ),
        Text(
          '3',
          style: TextStyles.bold16,
        ),
        CustomCircularButton(
          icon: Icons.remove,
          iconColor: Color(0xFF979899),
          backgroundColor: Color(0xFFF3F5F7),
          buttonRadius: 12,
          iconSize: 18,
        ),
      ],
    );
  }
}
