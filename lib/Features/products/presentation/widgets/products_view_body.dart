import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_notifications_button.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_search_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/product_grids_view_bloc_builder.dart';
import 'package:fruit_hub/features/products/presentation/widgets/products_view_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  void fetchProducts() async {
    await context.read<ProductsCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const CustomAppBar(
                showBackButton: false,
                title: 'المنتجات',
                actions: [
                  CustomNotificationsButton(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomSearchField(),
              const SizedBox(
                height: 16,
              ),
              ProductsViewHeader(
                productsLength: context.read<ProductsCubit>().productsLength,
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        const ProductsGridViewBlocBuilder(),
      ],
    );
  }
}
