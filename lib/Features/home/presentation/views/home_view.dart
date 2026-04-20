import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/home/presentation/views/custom_buttom_navigation_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = AppRoutes.homeView;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      backgroundColor: Color(0xFFFEFEFE),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: HomeViewBody(),
      ),
    );
  }
}
