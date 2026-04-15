import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 25,
        ),
        Text(
          'عروض العيد',
          style: TextStyles.regular13.copyWith(color: Colors.white),
        ),
        const Spacer(),
        Text(
          'خصم 25%',
          style: TextStyles.bold19.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 11,
        ),
        CustomButton(
          onPressed: () {},
          title: 'تسوق الآن',
          titleStyle: TextStyles.bold13.copyWith(
            color: AppColors.primaryColor,
          ),
          backgroundColor: Colors.white,
          width: 116,
          height: 32,
          borderRadius: 4,
        ),
        const SizedBox(
          height: 29,
        ),
      ],
    );
  }
}
