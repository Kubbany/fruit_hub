import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/core/utils/validators.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/verify_code_view.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomAppBar(
          title: context.tr.reset_password,
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          context.tr.type_email_code,
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xFF616A6B),
          ),
        ),
        const SizedBox(
          height: 31,
        ),
        CustomTextFormField(
          hint: context.tr.email,
          controller: TextEditingController(),
          validator: (value) => Validators.validateEmail(value),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, VerifyCodeView.routeName);
          },
          title: context.tr.send_code,
        ),
      ],
    );
  }
}
