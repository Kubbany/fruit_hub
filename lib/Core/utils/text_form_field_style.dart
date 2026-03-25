import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';

abstract class TextFormFieldStyle {
  static const bool filled = true;
  static const Color fillColor = Color(0xFFF9FAFA);
  static TextStyle hintStyle = TextStyles.bold13.copyWith(
    color: AppColors.inputFieldsColor,
  );
  static TextStyle inputStyle = TextStyles.semiBold16.copyWith(
    color: AppColors.headerColor,
  );
  static InputBorder? buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? const Color(0xFFE7E9EA),
        width: 1,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(
          4,
        ),
      ),
    );
  }
}
