import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_search_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/featured_list.dart';
import 'package:fruit_hub/features/home/presentation/widgets/home_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_selling_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    fetchBestSellingProducts();
  }

  void fetchBestSellingProducts() async {
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
              const HomeAppBar(),
              const SizedBox(
                height: 12,
              ),
              const CustomSearchField(),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: const FeaturedList(),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellingSection(),
        ),
        const BestSellingGridViewBlocBuilder(),
      ],
    );
  }
}
