import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/functions/skip_to_login.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';

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
            context.tr.skip,
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
