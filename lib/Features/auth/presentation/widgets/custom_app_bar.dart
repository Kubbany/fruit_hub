import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.actions});
  final String title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CustomBackButton(),
        const SizedBox(
          width: 85,
        ),
        Text(
          title,
          style: TextStyles.bold19,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        if (actions != null) ...actions!,
      ],
    );
  }
}
