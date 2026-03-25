import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:pinput/pinput.dart';

class OtpFields extends StatelessWidget {
  const OtpFields({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 74,
      height: 60,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      textStyle: TextStyles.bold23,
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFA),
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        border: Border.all(color: const Color(0xFFE6E9EA)),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 4,
        autofocus: true,
        showCursor: false,
        keyboardType: TextInputType.number,

        defaultPinTheme: defaultPinTheme,

        focusedPinTheme: defaultPinTheme.copyDecorationWith(
          border: Border.all(color: const Color(0xFFF4A91F)),
        ),

        onCompleted: (value) {},
      ),
    );
  }
}
