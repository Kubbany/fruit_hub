import 'package:flutter/material.dart';

import 'package:fruit_hub/core/utils/widgets/custom_check_box.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/terms_and_conditions.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        CustomCheckBox(),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: TermsAndConditions(),
        ),
      ],
    );
  }
}
