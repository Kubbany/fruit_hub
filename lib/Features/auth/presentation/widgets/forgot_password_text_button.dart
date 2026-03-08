import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Features/auth/presentation/views/forgot_password_view.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, ForgotPasswordView.routeName);
        },
        child: Text(
          context.tr.forgot_password,
          style: TextStyles.semiBold13.copyWith(
            color: AppColors.lightPrimaryColor,
          ),
        ),
      ),
    );
  }
}
