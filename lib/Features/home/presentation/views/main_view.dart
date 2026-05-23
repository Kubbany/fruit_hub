import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/cart/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/main_view_body_bloc_listener.dart';
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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomButtomNavigationBar(
          onItemTapped: (value) {
            currentViewIndex = value;
            setState(() {});
          },
        ),
        body: MainViewBodyBlocListener(currentViewIndex: currentViewIndex),
      ),
    );
  }
}
