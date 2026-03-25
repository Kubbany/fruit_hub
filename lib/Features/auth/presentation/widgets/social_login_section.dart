import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants/assets.dart';
import 'package:fruit_hub/core/utils/extensions/localization_extension.dart';
import 'package:fruit_hub/features/auth/domain/entities/social_login_button_entity.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/social_login_list_tile.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    SocialLoginButtonEntity.buttons = [
      SocialLoginButtonEntity(
        icon: Assets.imagesGoogleIcon,
        label: context.tr.sign_in_with_google,
        onPressed: () {},
      ),
      SocialLoginButtonEntity(
        icon: Assets.imagesApplIcon,
        label: context.tr.sign_in_with_apple,
        onPressed: () {},
      ),
      SocialLoginButtonEntity(
        icon: Assets.imagesFacebookIcon,
        label: context.tr.sign_in_with_facebook,
        onPressed: () {},
      ),
    ];
    return Column(
      children: List.generate(
        SocialLoginButtonEntity.buttons!.length,
        (index) => Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: SocialLoginListTile(
            socialLoginButtonEntity: SocialLoginButtonEntity.buttons![index],
          ),
        ),
      ),
    );
  }
}
