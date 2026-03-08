import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 85,
      children: <Widget>[
        const CustomBackButton(),
        Text(
          title,
          style: TextStyles.bold19,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
