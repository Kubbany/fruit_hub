import 'package:flutter/material.dart';

import 'package:fruit_hub/core/utils/constants/routes.dart';

import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_buttom_navigation_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = AppRoutes.mainView;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      body: HomeView(),
    );
  }
}
