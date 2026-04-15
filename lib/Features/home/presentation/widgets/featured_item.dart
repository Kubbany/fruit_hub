import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:fruit_hub/features/home/presentation/widgets/offers_section.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              top: 0,
              right: width * 0.4,
              child: Image.asset(
                Assets.imagesWatermelonTest,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: width * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                image: DecorationImage(
                  image: Svg(Assets.imagesFeaturedItemBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(right: 33),
                child: OffersSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
