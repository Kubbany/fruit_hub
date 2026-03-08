import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_text_password_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/dont_have_account_widget.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/forgot_password_text_button.dart';

class CredentialsLoginSection extends StatelessWidget {
  const CredentialsLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hint: context.tr.email,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextPasswordField(
          hint: context.tr.password,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 16,
        ),
        const ForgotPasswordTextButton(),
        const SizedBox(
          height: 37,
        ),
        CustomButton(
          onPressed: () {},
          title: context.tr.login,
          backgroundColor: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 33,
        ),
        const DontHaveAccountWidget(),
      ],
    );
  }
}
