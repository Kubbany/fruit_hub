import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 300,
      ),
      width: 24,
      height: 24,
      decoration: ShapeDecoration(
        color: isTermsAccepted ? AppColors.primaryColor : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: isTermsAccepted
                ? AppColors.primaryColor
                : const Color(0xFFDDDFDF),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          setState(() => isTermsAccepted = !isTermsAccepted);
          widget.onChanged(isTermsAccepted);
        },
        child: isTermsAccepted
            ? Padding(
                padding: const EdgeInsets.all(2),
                child: SvgPicture.asset(Assets.imagesCheck),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
