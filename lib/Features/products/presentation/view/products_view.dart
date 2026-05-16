import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/repos/product_repo.dart';
import 'package:fruit_hub/core/services/service_locator.dart';
import 'package:fruit_hub/core/utils/constants/routes.dart';
import 'package:fruit_hub/features/products/presentation/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});
  static const String routeName = AppRoutes.productsView;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        productRepo: getIt.get<ProductRepo>(),
      ),
      child: const Scaffold(
        backgroundColor: Color(0xFFFEFEFE),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ProductsViewBody(),
        ),
      ),
    );
  }
}
