import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  static const String routeName = 'forgotPasswordView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ForgotPasswordViewBody(),
      ),
    );
  }
}
