import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../generated/locale_keys.g.dart';

class ResendPasswordHeader extends StatelessWidget {
  const ResendPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: ColorName.secondaryButtonColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              context.verticalSpaceSmall,
              SafeArea(
                child: SvgPicture.asset(
                  Assets.icons.iconLogo.path,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                LocaleKeys.welcome.tr(),
                textAlign: TextAlign.center,
                style: context.titleMedium.copyWith(
                  color: ColorName.white,
                ),
              ),
              context.verticalSpaceMedium,
              Image.asset(
                Assets.images.userAvatars.path,
                fit: BoxFit.cover,
              ),
              context.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.joined_people.tr(),
                    style: context.bodySmall.copyWith(
                      color: ColorName.smallTextColor,
                    ),
                  ),
                  context.horizontalSpaceSmall,
                  SvgPicture.asset(
                    Assets.icons.iconTurn.path,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              context.verticalSpaceMedium,
            ],
          ),
        ),
        Positioned(
          top: context.setWidth(50),
          left: context.setWidth(10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorName.white,
              size: context.setWidth(20),
            ),
            onPressed: () {
              context.router.pop();
            },
          ),
        ),
      ],
    );
  }
}
