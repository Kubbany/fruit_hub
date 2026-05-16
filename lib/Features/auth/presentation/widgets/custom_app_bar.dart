import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.showBackButton = true,
  });
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Visibility(
          visible: showBackButton,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: const CustomBackButton(),
        ),
        const Spacer(),
        const SizedBox(
          width: 85,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyles.bold19,
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(
          flex: 9,
        ),
        if (actions != null) ...actions!,
      ],
    );
  }
}
