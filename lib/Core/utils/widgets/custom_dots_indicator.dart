import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.dotsCount,
    required this.activeColor,
    required this.color,
    required this.margin,
    required this.size,
    required this.currentPage,
  });
  final int dotsCount;
  final int currentPage;
  final Color activeColor;
  final Color color;
  final double margin;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: List<Widget>.generate(
        dotsCount,
        (int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            width: currentPage >= index ? size : size - 2,
            height: currentPage >= index ? size : size - 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage >= index ? activeColor : color,
            ),
          );
        },
      ),
    );
  }
}
