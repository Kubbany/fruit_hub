import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/services/prefs.dart';
import 'package:fruit_hub/Features/auth/presentation/views/auth_view.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/Core/utils/constants/assets.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SvgPicture.asset(
          Assets.imagesPlant,
          alignment: Alignment.topLeft,
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void _executeNavigation() async {
    await Future.delayed(const Duration(seconds: 2));
    {
      if (mounted) {
        bool skipToLogin = Prefs.getBool(AppStrings.skipToLogin);
        if (skipToLogin) {
          Navigator.pushReplacementNamed(context, AuthView.routeName);
          return;
        }
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    }
  }
}
