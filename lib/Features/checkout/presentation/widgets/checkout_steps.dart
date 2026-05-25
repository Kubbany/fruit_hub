import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:svg_flutter/svg.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        stepsItems.length,
        (index) => isActive
            ? ActiveStepItem(
                title: stepsItems[index],
              )
            : InactiveStepItem(
                index: index,
                title: stepsItems[index],
              ),
      ),
    );
  }

  final List<String> stepsItems = const [
    'الشحن',
    'الدفع',
    'العنوان',
    'المراجعة',
  ];
}

class InactiveStepItem extends StatelessWidget {
  const InactiveStepItem({super.key, required this.index, required this.title});
  final int index;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: const Color(0xFFF2F3F3),
          child: Text(
            (index + 1).toString(),
            style: TextStyles.semiBold13.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
      ],
    );
  }
}

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: AppColors.primaryColor,
          child: SvgPicture.asset(
            Assets.imagesCheck,
          ),
        ),
        Text(
          title,
          style: TextStyles.bold13.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
