import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});
  static const String routeName = 'auth';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthViewBody(),
    );
  }
}
