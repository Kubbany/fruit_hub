import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_page_view_entity.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/skip_to_login_button.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/title_and_description_section.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.item, required this.index});
  final OnBoardingPageViewEntity item;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: .infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: SvgPicture.asset(
                  item.backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(item.image),
              ),
              const SkipToLoginButton(),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 29,
          ),
          child: TitleAndDescriptionSection(item: item),
        ),
      ],
    );
  }
}
