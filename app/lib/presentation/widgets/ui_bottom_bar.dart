import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UIBottombar extends StatelessWidget {
  const UIBottombar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      height: ScreenUtil().setHeight(50),
      onTap: onTap,
      activeColor: ColorName.buttonColor,
      backgroundColor: ColorName.secondaryButtonColor,
      style: TabStyle.react,
      items: [
        TabItem(
          title: LocaleKeys.main_home.tr(),
          activeIcon: SvgPicture.asset(
            Assets.icons.iconHomeActive.path,
          ),
          icon: SvgPicture.asset(
            Assets.icons.iconHomeInactive.path,
          ),
        ),
        TabItem(
          title: LocaleKeys.main_atlas.tr(),
          activeIcon: SvgPicture.asset(
            Assets.icons.iconAtlasActive.path,
          ),
          icon: SvgPicture.asset(
            Assets.icons.iconAtlasInactive.path,
          ),
        ),
        const TabItem(
          activeIcon: SizedBox(),
          icon: SizedBox(),
        ),
        TabItem(
          title: LocaleKeys.main_music.tr(),
          activeIcon: SvgPicture.asset(
            Assets.icons.iconMusicActive.path,
          ),
          icon: SvgPicture.asset(
            Assets.icons.iconMusicInactive.path,
          ),
        ),
        TabItem(
          title: LocaleKeys.main_events.tr(),
          activeIcon: SvgPicture.asset(
            Assets.icons.iconEventActive.path,
          ),
          icon: SvgPicture.asset(
            Assets.icons.iconEventInactive.path,
          ),
        ),
      ],
    );
  }
}
