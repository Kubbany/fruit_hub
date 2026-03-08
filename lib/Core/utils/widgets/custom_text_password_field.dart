import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/text_form_field_style.dart';

class CustomTextPasswordField extends StatefulWidget {
  const CustomTextPasswordField({
    super.key,
    required this.hint,
    required this.controller,
  });
  final String hint;
  final TextEditingController controller;

  @override
  State<CustomTextPasswordField> createState() =>
      _CustomTextPasswordFieldState();
}

class _CustomTextPasswordFieldState extends State<CustomTextPasswordField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      controller: widget.controller,
      style: TextFormFieldStyle.inputStyle,
      decoration: InputDecoration(
        hint: Text(
          widget.hint,
          style: TextStyles.bold13.copyWith(
            color: AppColors.inputFieldsColor,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            isVisible = !isVisible;
            setState(() {});
          },
          icon: Icon(
            !isVisible ? Icons.visibility : Icons.visibility_off,
            color: AppColors.inputFieldsColor,
            size: 20,
          ),
        ),
        filled: TextFormFieldStyle.filled,
        fillColor: TextFormFieldStyle.fillColor,

        border: TextFormFieldStyle.buildBorder(),
        focusedBorder: TextFormFieldStyle.buildBorder(
          color: Colors.blue,
        ),
        enabledBorder: TextFormFieldStyle.buildBorder(),
        errorBorder: TextFormFieldStyle.buildBorder(
          color: Colors.red,
        ),
      ),
    );
  }
}
