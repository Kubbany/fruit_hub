import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/core/utils/validators.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_password_field.dart';

class RegisterTextFormFields extends StatelessWidget {
  const RegisterTextFormFields({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });
  final TextEditingController nameController,
      emailController,
      passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CustomTextFormField(
          hint: context.tr.full_name,
          controller: nameController,
          validator: (value) => Validators.validateEmpty(
            value,
          ),
        ),
        CustomTextFormField(
          hint: context.tr.email,
          controller: emailController,
          validator: (value) => Validators.validateEmail(value),
        ),

        CustomTextPasswordField(
          hint: context.tr.password,
          controller: passwordController,
          validator: (value) => Validators.validatePassword(value),
        ),
        CustomTextPasswordField(
          hint: context.tr.confirm_password,
          controller: TextEditingController(),
          validator: (value) => Validators.validateMatchedPassword(
            value,
            passwordController.text,
          ),
        ),
      ],
    );
  }
}
