import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/views/forgot_password_view.dart';
import 'package:fruit_hub/Features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/Features/auth/presentation/views/new_password_view.dart';
import 'package:fruit_hub/Features/auth/presentation/views/register_view.dart';
import 'package:fruit_hub/Features/auth/presentation/views/verify_code_view.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/Features/splash/presentation/views/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings route) {
  switch (route.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
    case RegisterView.routeName:
      return MaterialPageRoute(
        builder: (context) => const RegisterView(),
      );
    case NewPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const NewPasswordView(),
      );
    case ForgotPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordView(),
      );
    case VerifyCodeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const VerifyCodeView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
