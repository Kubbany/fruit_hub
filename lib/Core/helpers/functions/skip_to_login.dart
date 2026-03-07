import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/services/prefs.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Features/auth/presentation/views/auth_view.dart';

void skipToLogin(BuildContext context) {
  {
    Prefs.setBool(AppStrings.skipToLogin, true);
    Navigator.pushReplacementNamed(context, AuthView.routeName);
  }
}
