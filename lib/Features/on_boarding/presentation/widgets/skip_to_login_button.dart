import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/helpers/functions/skip_to_login.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';

class SkipToLoginButton extends StatelessWidget {
  const SkipToLoginButton({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: index == 0,
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: TextButton(
          onPressed: () => skipToLogin(context),
          child: Text(
            AppStrings.skip,
            style: TextStyles.regular13.copyWith(
              color: const Color(
                0xFF949D9E,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
