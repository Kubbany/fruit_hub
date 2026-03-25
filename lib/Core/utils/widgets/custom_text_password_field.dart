import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/text_form_field_style.dart';

class CustomTextPasswordField extends StatefulWidget {
  const CustomTextPasswordField({
    super.key,
    required this.hint,
    required this.controller,
    required this.validator,
  });
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;

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
      validator: widget.validator,
      style: TextFormFieldStyle.inputStyle,
      decoration: InputDecoration(
        hint: Text(
          widget.hint,
          style: TextFormFieldStyle.hintStyle,
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
