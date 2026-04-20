import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/assets.dart';
import 'package:svg_flutter/svg.dart';

class CustomNotificationsButton extends StatelessWidget {
  const CustomNotificationsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: const Color(0xFFEEF8ED),
        shape: const CircleBorder(),
        fixedSize: const Size.fromRadius(17),
      ),
      icon: SvgPicture.asset(
        Assets.imagesNotification,
      ),
      onPressed: () {},
    );
  }
}
