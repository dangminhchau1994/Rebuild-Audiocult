import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

class UIFabMenu extends StatelessWidget {
  const UIFabMenu({
    super.key,
    this.onSearchTap,
    this.onNotificationTap,
    this.onCartTap,
  });

  final Function()? onSearchTap;
  final Function()? onNotificationTap;
  final Function()? onCartTap;

  void setBadge() async {}

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      overlayColor: ColorName.backgroundColor,
      spaceBetweenChildren: 10,
      childPadding: const EdgeInsets.all(6),
      spacing: 3,
      elevation: 0,
      direction: SpeedDialDirection.down,
      dialRoot: (context, open, toggleChildren) {
        if (open) {
          setBadge();
          return _buildActionIcon(
            const Icon(
              Icons.close,
              color: ColorName.white,
            ),
            false,
          );
        } else {
          return _buildActionIcon(
            Stack(
              fit: StackFit.expand,
              children: [
                GestureDetector(
                  onTap: toggleChildren,
                  child: SvgPicture.asset(
                    Assets.icons.iconActionMenu.path,
                  ),
                ),
                // Positioned(
                //   top: 10,
                //   right: 0,
                //   child: Container(
                //     width: 10,
                //     height: 10,
                //     decoration: const BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Colors.red,
                //     ),
                //   ),
                // ),
              ],
            ),
            false,
          );
        }
      },
      children: [
        SpeedDialChild(
          child: SvgPicture.asset(
            Assets.icons.iconSearch.path,
            width: 40,
            height: 40,
          ),
          backgroundColor: ColorName.inputFillColor,
          onTap: onSearchTap,
        ),
        SpeedDialChild(
          backgroundColor: ColorName.inputFillColor,
          onTap: onNotificationTap,
          child: badges.Badge(
            badgeContent: Text(
              '5',
              style: context.bodySmall.copyWith(
                color: ColorName.white,
                fontSize: 12,
              ),
            ),
            showBadge: true,
            position: BadgePosition.topEnd(),
            child: SvgPicture.asset(
              Assets.icons.iconNotification.path,
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
          ),
        ),
        SpeedDialChild(
          backgroundColor: ColorName.inputFillColor,
          onTap: onCartTap,
          child: badges.Badge(
            badgeContent: Text(
              '1',
              textAlign: TextAlign.center,
              style: context.bodySmall.copyWith(
                color: ColorName.white,
                fontSize: 12,
              ),
            ),
            showBadge: true,
            position: BadgePosition.topEnd(),
            child: SvgPicture.asset(
              Assets.icons.iconCart.path,
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionIcon(Widget child, bool padding) {
    return Container(
      padding: EdgeInsets.all(padding ? 8 : 0),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: ScreenUtil().setWidth(36),
      height: ScreenUtil().setWidth(36),
      decoration: const BoxDecoration(
        color: ColorName.inputFillColor,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
