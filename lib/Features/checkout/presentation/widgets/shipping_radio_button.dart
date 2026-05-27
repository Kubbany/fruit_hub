import 'package:flutter/material.dart';

class InactiveShippingRadioButton extends StatelessWidget {
  const InactiveShippingRadioButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          right: 4,
          left: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF949D9E)),
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
        width: 18,
        height: 18,
      ),
    );
  }
}
