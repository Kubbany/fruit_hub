import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/services/prefs.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Features/auth/presentation/views/auth_view.dart';

class SkipToLoginButton extends StatelessWidget {
  const SkipToLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: TextButton(
        onPressed: () {
          Prefs.setBool(AppStrings.skipToLogin, true);
          Navigator.pushReplacementNamed(context, AuthView.routeName);
        },
        child: Text(
          AppStrings.skip,
          style: TextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),
        ),
      ),
    );
  }
}
