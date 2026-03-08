import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});
  static const String routeName = 'newPassword';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: NewPasswordViewBody(),
      ),
    );
  }
}
