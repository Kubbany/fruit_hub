import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/views/login_view.dart';
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

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
