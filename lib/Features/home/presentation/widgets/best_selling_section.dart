import 'package:flutter/material.dart';

import 'package:fruit_hub/features/home/presentation/widgets/best_selling_header.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        BestSellingHeader(),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
