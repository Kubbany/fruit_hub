import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_divider.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: <Widget>[
        const CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 18,
          ),
          child: Text(
            context.tr.or,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF141F1F),
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
