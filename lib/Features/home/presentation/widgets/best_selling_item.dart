import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';

class BestSellingItem extends StatelessWidget {
  const BestSellingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF3F5F7),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_rounded,
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  Assets.imagesWatermelonTest,
                ),
                const SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: const Text(
                    'بطيخ',
                    style: TextStyles.semiBold13,
                  ),
                  subtitle: RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '20جنية',
                          style: TextStyles.semiBold16.copyWith(
                            color: const Color(0xffF4B544),
                          ),
                        ),
                        TextSpan(
                          text: ' / ',
                          style: TextStyles.semiBold16.copyWith(
                            color: const Color(0xFFf8c76d),
                          ),
                        ),
                        TextSpan(
                          text: 'الكيلو',
                          style: TextStyles.semiBold16.copyWith(
                            color: const Color(0xFFf8c76d),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 22,
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
