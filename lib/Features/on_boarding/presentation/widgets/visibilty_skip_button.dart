import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/helpers/functions/skip_to_login.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';

class VisibiltySkipButton extends StatelessWidget {
  const VisibiltySkipButton({
    super.key,
    required this.currentPage,
  });
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPage == 1,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: CustomButton(
        onPressed: () => skipToLogin(context),
        title: context.tr.startNow,
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
