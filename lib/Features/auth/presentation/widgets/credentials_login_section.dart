import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/core/utils/validators.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_password_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/register_view.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_register_navigation_action.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/forgot_password_text_button.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';

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
          validator: (value) => Validators.validateEmail(value),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextPasswordField(
          hint: context.tr.password,
          controller: TextEditingController(),
          validator: (value) => Validators.validatePassword(value),
        ),
        const SizedBox(
          height: 16,
        ),
        const ForgotPasswordTextButton(),
        const SizedBox(
          height: 37,
        ),
        CustomButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              HomeView.routeName,
            );
          },
          title: context.tr.login,
          backgroundColor: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 33,
        ),
        LoginRegisterNavigationAction(
          title: context.tr.dont_have_an_account,
          actionTitle: context.tr.create_account,
          onPressed: () => Navigator.pushNamed(context, RegisterView.routeName),
        ),
      ],
    );
  }
}
