import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/assets.dart';
import 'package:svg_flutter/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ListTile(
            leading: Image.asset(Assets.imagesProfileImage),
            title: Text(
              'صباح الخير !..',
              style: TextStyles.regular16.copyWith(
                color: const Color(0xFF949D9E),
              ),
            ),
            subtitle: const Text(
              'أحمد مصطفى',
              style: TextStyles.bold16,
            ),
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: const Color(0xFFEEF8ED),
            shape: const CircleBorder(),
            fixedSize: const Size.fromRadius(17),
          ),
          icon: SvgPicture.asset(
            Assets.imagesNotification,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
