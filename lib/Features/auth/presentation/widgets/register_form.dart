import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_text_password_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hint: context.tr.full_name,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 16,
        ),
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
      ],
    );
  }
}
