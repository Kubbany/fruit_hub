import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';

import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/helpers/functions/get_dummy_data.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_selling_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingGridView(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                state.errorMessage,
                style: TextStyles.bold19,
              ),
            ),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
