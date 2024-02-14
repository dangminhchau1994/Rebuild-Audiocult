import 'dart:math';
import 'package:app/custom_libs/circular/circular_menu.dart';
import 'package:app/custom_libs/circular/circular_menu_item.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UICircularMenu extends StatefulWidget {
  const UICircularMenu({
    super.key,
    this.onEventTap,
    this.onMusicTap,
    this.onPostTap,
  });

  final Function()? onPostTap;
  final Function()? onMusicTap;
  final Function()? onEventTap;

  @override
  State<UICircularMenu> createState() => _UICircularMenuState();
}

class _UICircularMenuState extends State<UICircularMenu> {
  final key = GlobalKey<CircularMenuState>();
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return CircularMenu(
      key: key,
      startingAngleInRadian: 1.25 * pi,
      endingAngleInRadian: 1.75 * pi,
      toggleButtonSize: 30,
      toggleButtonPadding: 20,
      toggleButtonColor: ColorName.buttonColor,
      toggleButtonIconColor: ColorName.white,
      items: [
        CircularMenuItem(
          label: 'Post',
          isToogleButton: false,
          onTap: () {
            setState(() {
              isShow = false;
              key.currentState?.reverseAnimation();
            });
            widget.onPostTap?.call();
          },
          icon: SvgPicture.asset(
            Assets.icons.iconSmile.path,
          ),
        ),
        CircularMenuItem(
          label: 'Music',
          isToogleButton: false,
          onTap: () {
            setState(() {
              isShow = false;
              key.currentState?.reverseAnimation();
            });
            widget.onMusicTap?.call();
          },
          icon: SvgPicture.asset(
            Assets.icons.iconMusicInactive.path,
          ),
        ),
        CircularMenuItem(
          label: 'Event',
          isToogleButton: false,
          onTap: () {
            setState(() {
              isShow = false;
              key.currentState?.reverseAnimation();
            });
            widget.onEventTap?.call();
          },
          icon: SvgPicture.asset(
            Assets.icons.iconEventInactive.path,
          ),
        ),
      ],
      backgroundWidget: isShow
          ? GestureDetector(
              onTap: () {
                setState(() {
                  isShow = false;
                  key.currentState?.reverseAnimation();
                });
              },
              child: Blur(
                blur: 5,
                blurColor: ColorName.secondaryButtonColor,
                child: Container(
                  color: ColorName.secondaryButtonColor.withOpacity(0.7),
                ),
              ),
            )
          : null,
      toggleButtonOnPressed: () {
        setState(() {
          isShow = !isShow;
        });
      },
    );
  }
}
