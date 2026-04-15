import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),

      itemBuilder: (context, index) => const FeaturedItem(),
      itemCount: 4,
      separatorBuilder: (context, index) => const SizedBox(
        width: 8,
      ),
    );
  }
}
