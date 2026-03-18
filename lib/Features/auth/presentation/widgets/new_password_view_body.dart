import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_text_password_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: <Widget>[
        CustomAppBar(
          title: context.tr.new_password,
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          context.tr.create_new_password,
          style: TextStyles.semiBold16,
        ),
        const SizedBox(
          height: 34,
        ),
        CustomTextPasswordField(
          hint: context.tr.enter_new_password,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextPasswordField(
          hint: context.tr.reenter_new_password,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomButton(
          onPressed: () {},
          title: context.tr.create_new_password_button,
        ),
      ],
    );
  }
}
