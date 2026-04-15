import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_search_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/featured_list.dart';
import 'package:fruit_hub/features/home/presentation/widgets/home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
            ],
          ),
        ),
      ],
    );
  }
}
