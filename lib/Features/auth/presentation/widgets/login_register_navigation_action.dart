import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';

class LoginRegisterNavigationAction extends StatelessWidget {
  const LoginRegisterNavigationAction({
    super.key,
    required this.title,
    required this.actionTitle,
    required this.onPressed,
  });
  final String title;
  final String actionTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$title ',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(
                0xFF616A6B,
              ),
            ),
          ),
          TextSpan(
            text: actionTitle,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
