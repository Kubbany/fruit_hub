import 'package:flutter/material.dart';
import 'package:fruit_hub/core/services/prefs.dart';
import 'package:fruit_hub/core/utils/constants/strings.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';

void skipToLogin(BuildContext context) {
  {
    Prefs.setBool(AppStrings.kSkipToLoginBool, true);
    Navigator.pushReplacementNamed(context, LoginView.routeName);
  }
}
