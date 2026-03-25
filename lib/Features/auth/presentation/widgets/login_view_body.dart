import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_form_bloc_consumer.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/social_login_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              CustomAppBar(
                title: context.tr.login,
              ),
              const SizedBox(height: 24),
              const LoginFormBlocConsumer(),
              const SizedBox(
                height: 37,
              ),
              const OrDivider(),
              const SocialLoginSection(),
            ],
          ),
        ),
      ],
    );
  }
}
