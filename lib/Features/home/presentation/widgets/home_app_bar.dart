import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/assets.dart';
import 'package:fruit_hub/core/helpers/functions/get_user.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_notifications_button.dart';

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
            subtitle: Text(
              getUser().username,
              style: TextStyles.bold16,
            ),
          ),
        ),
        const CustomNotificationsButton(),
      ],
    );
  }
}
