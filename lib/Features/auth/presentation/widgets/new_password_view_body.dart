import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/core/utils/validators.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_password_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';

class NewPasswordViewBody extends StatefulWidget {
  const NewPasswordViewBody({super.key});

  @override
  State<NewPasswordViewBody> createState() => _NewPasswordViewBodyState();
}

late TextEditingController passwordController;

class _NewPasswordViewBodyState extends State<NewPasswordViewBody> {
  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
  }

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
          controller: passwordController,
          validator: (value) => Validators.validatePassword(value),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextPasswordField(
          hint: context.tr.reenter_new_password,
          controller: TextEditingController(),
          validator: (value) => Validators.validateMatchedPassword(
            value,
            passwordController.text,
          ),
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
