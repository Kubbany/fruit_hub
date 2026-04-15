import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:svg_flutter/svg.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0X0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: SizedBox(
            width: 20,
            child: Center(
              child: SvgPicture.asset(
                Assets.imagesSearchIcon,
              ),
            ),
          ),

          enabledBorder: buildBorder(),
          hint: Text(
            'ابحث عن.......',
            style: TextStyles.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(
              child: SvgPicture.asset(Assets.imagesFilter),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
