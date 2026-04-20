import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_selling_grid_view.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_notifications_button.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(
                title: 'الأكثر مبيعًا',
                actions: [
                  CustomNotificationsButton(),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'الأكثر مبيعًا',
                style: TextStyles.bold16,
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        BestSellingGridView(),
      ],
    );
  }
}
