import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: const Color(0xFFF1F1F5),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.headerColor,
          ),
        ),
      ),
    );
  }
}
