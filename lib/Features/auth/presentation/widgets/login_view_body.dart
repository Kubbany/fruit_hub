import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/extensions/localization_extension.dart';

import 'package:fruit_hub/Features/auth/presentation/widgets/credentials_login_section.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_app_bar.dart';

import 'package:fruit_hub/Features/auth/presentation/widgets/or_divider.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/social_login_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        16,
      ),
      child: Column(
        children: <Widget>[
          CustomAppBar(
            title: context.tr.login,
          ),
          const SizedBox(height: 24),
          const CredentialsLoginSection(),
          const SizedBox(
            height: 37,
          ),
          const OrDivider(),
          const SocialLoginSection(),
        ],
      ),
    );
  }
}
