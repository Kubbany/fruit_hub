import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Features/auth/presentation/views/new_password_view.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_app_bar.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomAppBar(title: context.tr.check_code),
        const SizedBox(
          height: 28,
        ),
        Text(
          context.tr.type_recieved_code,
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xFF616A6B),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        const SizedBox(
          height: 29,
        ),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, NewPasswordView.routeName);
          },
          title: context.tr.check_code_button,
        ),
        const SizedBox(
          height: 24,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            context.tr.resend_code,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
