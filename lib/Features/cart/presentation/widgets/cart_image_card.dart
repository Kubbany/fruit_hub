import 'package:flutter/material.dart';

class CartImageCard extends StatelessWidget {
  const CartImageCard({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 93,
      decoration: const BoxDecoration(
        color: Color(0xFFF3F5F7),
      ),
      child: Center(
        child: Image.network(
          image,
          width: 53,
          height: 40,
        ),
      ),
    );
  }
}
