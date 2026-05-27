import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/shipping_radio_button.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
  });
  final String title, subtitle;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Iconst nactiveShippingItem();
  }
}

class InactiveShippingItem extends StatelessWidget {
  const InactiveShippingItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
  });
  final String title, subtitle;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9).withAlpha(53),
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const InactiveShippingRadioButton(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  title,
                  style: TextStyles.semiBold13,
                ),
                Text(
                  subtitle,
                  style: TextStyles.regular13.copyWith(
                    color: const Color(0xFF000000).withAlpha(128),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: Text(
                '$price جنيه',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
