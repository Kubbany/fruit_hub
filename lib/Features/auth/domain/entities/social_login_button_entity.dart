import 'package:flutter/material.dart';

class SocialLoginButtonEntity {
  final String icon;
  final String label;
  final VoidCallback onPressed;

  const SocialLoginButtonEntity({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  static List<SocialLoginButtonEntity>? buttons;
}
