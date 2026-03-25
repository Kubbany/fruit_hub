import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/core/utils/validators.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_password_field.dart';
import 'package:fruit_hub/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/register_view.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/forgot_password_text_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_register_navigation_action.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    this.isLoading = false,
  });
  final bool isLoading;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: context.tr.email,
            controller: emailController,
            validator: (value) => Validators.validateEmail(value),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextPasswordField(
            hint: context.tr.password,
            controller: passwordController,
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
              if (formKey.currentState!.validate()) {
                context.read<LoginCubit>().loginUser(
                  emailController.text,
                  passwordController.text,
                );
              }
            },
            isLoading: widget.isLoading,
            title: context.tr.login,
            backgroundColor: AppColors.primaryColor,
          ),
          const SizedBox(
            height: 33,
          ),
          LoginRegisterNavigationAction(
            title: context.tr.dont_have_an_account,
            actionTitle: context.tr.create_account,
            onPressed: () =>
                Navigator.pushNamed(context, RegisterView.routeName),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
