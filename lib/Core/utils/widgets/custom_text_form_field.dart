import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/text_form_field_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.controller,
    required this.validator,
  });
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextFormFieldStyle.inputStyle,
      decoration: InputDecoration(
        hint: Text(hint, style: TextFormFieldStyle.hintStyle),
        filled: TextFormFieldStyle.filled,
        fillColor: TextFormFieldStyle.fillColor,

        border: TextFormFieldStyle.buildBorder(),
        focusedBorder: TextFormFieldStyle.buildBorder(
          color: AppColors.lightPrimaryColor,
        ),
        enabledBorder: TextFormFieldStyle.buildBorder(),
        errorBorder: TextFormFieldStyle.buildBorder(
          color: Colors.red,
        ),
      ),
    );
  }
}
