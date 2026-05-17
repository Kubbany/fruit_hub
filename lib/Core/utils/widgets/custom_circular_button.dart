import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    super.key,
    required this.backgroundColor,
    required this.buttonRadius,
    required this.iconSize,
    required this.iconColor,
    required this.icon,
  });
  final Color backgroundColor;
  final Color iconColor;
  final double buttonRadius;
  final double iconSize;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
