import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_buttom_navigation_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = AppRoutes.mostSellingView;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: BestSellingViewBody(),
        ),
      ),
    );
  }
}
