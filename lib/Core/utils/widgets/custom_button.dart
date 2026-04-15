import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.isLoading = false,
    this.width,
    this.height,
    this.titleStyle,
    this.borderRadius,
  });
  final VoidCallback onPressed;
  final String title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final bool isLoading;
  final double? width, height;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(
              Radius.circular(borderRadius ?? 16),
            ),
          ),
        ),
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                title,
                style:
                    titleStyle ??
                    TextStyles.bold16.copyWith(
                      color: Colors.white,
                    ),
              ),
      ),
    );
  }
}
