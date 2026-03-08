import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/verify_code_view_body.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});
  static const String routeName = 'verifyCode';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: VerifyCodeViewBody(),
      ),
    );
  }
}
