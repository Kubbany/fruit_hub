import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    super.key,
    required this.backgroundColor,
    required this.buttonRadius,
    required this.iconSize,
    required this.iconColor,
    required this.icon,
    required this.onTap,
  });
  final Color backgroundColor;
  final Color iconColor;
  final double buttonRadius;
  final double iconSize;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: buttonRadius,
        backgroundColor: backgroundColor,
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
