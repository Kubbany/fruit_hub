import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/forgot_password_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/new_password_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/register_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/verify_code_view.dart';
import 'package:fruit_hub/features/cart/presentation/view/cart_view.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import 'package:fruit_hub/features/home/presentation/views/main_view.dart';
import 'package:fruit_hub/features/home/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/features/products/presentation/view/products_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

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
    case ForgotPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordView(),
      );
    case NewPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const NewPasswordView(),
      );
    case VerifyCodeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const VerifyCodeView(),
      );
    case MainView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainView(),
      );
    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );
    case ProductsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ProductsView(),
      );
    case CartView.routeName:
      return MaterialPageRoute(
        builder: (context) => const CartView(),
      );
    case BestSellingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const BestSellingView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
