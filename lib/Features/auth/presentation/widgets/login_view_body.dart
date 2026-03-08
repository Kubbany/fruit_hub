import 'package:flutter/material.dart';

import 'package:fruit_hub/Features/auth/presentation/widgets/credentials_login_section.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_app_bar.dart';

import 'package:fruit_hub/Features/auth/presentation/widgets/or_divider.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/social_login_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(
        16,
      ),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(height: 24),
          CredentialsLoginSection(),
          SizedBox(
            height: 37,
          ),
          OrDivider(),
          SocialLoginSection(),
        ],
      ),
    );
  }
}
