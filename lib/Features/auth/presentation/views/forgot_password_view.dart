import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  static const String routeName = AppRoutes.forgotPasswordView;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: ForgotPasswordViewBody(),
        ),
      ),
    );
  }
}
