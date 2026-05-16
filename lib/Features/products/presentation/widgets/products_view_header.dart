import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({
    super.key,
    required this.productsLength,
  });
  final int productsLength;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: <Widget>[
        Text(
          '$productsLength نتائج',
          style: TextStyles.bold16,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: ShapeDecoration(
            color: Colors.white.withAlpha(26),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(4),
              ),
              side: BorderSide(
                width: 1,
                color: Color(0x66CACECE),
              ),
            ),
          ),
          child: SvgPicture.asset(
            Assets.imagesFilter2,
          ),
        ),
      ],
    );
  }
}
