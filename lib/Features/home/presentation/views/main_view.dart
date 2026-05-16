import 'package:flutter/material.dart';

import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/cart/presentation/view/cart_view.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import 'package:fruit_hub/features/products/presentation/view/products_view.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_buttom_navigation_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = AppRoutes.mainView;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(
        onItemTapped: (value) {
          currentViewIndex = value;
          setState(() {});
        },
      ),
      body: IndexedStack(
        index: currentViewIndex,
        children: [
          const HomeView(),
          const ProductsView(),
          const CartView(),
        ],
      ),
    );
  }
}
