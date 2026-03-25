import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_register_navigation_action.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/register_text_form_fields.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/register_view_body.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/terms_and_conditions_widget.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.isLoading,
  });
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomAppBar(
          title: context.tr.new_account,
        ),
        const SizedBox(
          height: 24,
        ),
        RegisterTextFormFields(
          nameController: nameController,
          emailController: emailController,
          passwordController: passwordController,
        ),
        const SizedBox(
          height: 16,
        ),
        const TermsAndConditionsWidget(),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<RegisterCubit>().registerUser(
                nameController.text,
                emailController.text,
                passwordController.text,
              );
            }
          },
          isLoading: isLoading,
          title: context.tr.create_new_account,
          backgroundColor: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 26,
        ),
        LoginRegisterNavigationAction(
          title: context.tr.have_account,
          actionTitle: context.tr.login,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
