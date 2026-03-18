import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/text_form_field_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.controller,
  });
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextFormFieldStyle.inputStyle,
      decoration: InputDecoration(
        hint: Text(hint, style: TextFormFieldStyle.hintStyle),
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
