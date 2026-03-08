import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Features/auth/presentation/views/register_view.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${context.tr.dont_have_an_account} ',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(
                0xFF616A6B,
              ),
            ),
          ),
          TextSpan(
            text: context.tr.create_account,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, RegisterView.routeName);
              },
          ),
        ],
      ),
    );
  }
}
