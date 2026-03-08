import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/login_register_navigation_action.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/register_form.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/terms_and_conditions_widget.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              CustomAppBar(
                title: context.tr.new_account,
              ),
              const SizedBox(
                height: 24,
              ),
              const RegisterForm(),
              const SizedBox(
                height: 16,
              ),
              const TermsAndConditionsWidget(),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {},
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
          ),
        ),
      ],
    );
  }
}
