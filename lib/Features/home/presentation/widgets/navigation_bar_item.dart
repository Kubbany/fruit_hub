import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:svg_flutter/svg.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveNavigationBarItem(
            image: bottomNavigationBarEntity.activeIcon,
            title: bottomNavigationBarEntity.title,
          )
        : InActiveNavigationBarItem(
            image: bottomNavigationBarEntity.inActiveIcon,
          );
  }
}

class InActiveNavigationBarItem extends StatelessWidget {
  const InActiveNavigationBarItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      fit: BoxFit.scaleDown,
    );
  }
}

class ActiveNavigationBarItem extends StatelessWidget {
  const ActiveNavigationBarItem({
    super.key,
    required this.image,
    required this.title,
  });
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        decoration: const ShapeDecoration(
          color: Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(
              Radius.circular(30),
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(
                    Radius.circular(30),
                  ),
                ),
                color: AppColors.primaryColor,
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: TextStyles.semiBold11.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
