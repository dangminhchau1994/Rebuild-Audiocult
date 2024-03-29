import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          TabBar(
            controller: tabController,
            tabs: [
              Tab(
                text: LocaleKeys.auth_sign_up.tr(),
              ),
              Tab(
                text: LocaleKeys.auth_sign_in.tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
