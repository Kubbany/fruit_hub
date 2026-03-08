import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 85,
      children: <Widget>[
        const CustomBackButton(),
        Text(
          context.tr.login,
          style: TextStyles.bold19,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
