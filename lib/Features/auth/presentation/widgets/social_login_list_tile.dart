import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/domain/entities/social_login_button_entity.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginListTile extends StatelessWidget {
  const SocialLoginListTile({super.key, required this.socialLoginButtonEntity});
  final SocialLoginButtonEntity socialLoginButtonEntity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xFFDDDFDF),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      leading: SvgPicture.asset(
        socialLoginButtonEntity.icon,
      ),
      title: Text(
        socialLoginButtonEntity.label,
        style: TextStyles.semiBold16,
        textAlign: TextAlign.center,
      ),
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.maximumDensity,
      ),
      onTap: socialLoginButtonEntity.onPressed,
    );
  }
}
