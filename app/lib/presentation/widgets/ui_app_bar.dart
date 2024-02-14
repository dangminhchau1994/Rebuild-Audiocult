import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIAppbar extends StatelessWidget implements PreferredSizeWidget {
  const UIAppbar({
    super.key,
    this.leading,
    this.actions,
    this.title,
    this.backgroundColor,
    this.centerTitle,
    this.leadingWidth,
    this.height,
  });

  final Widget? leading;
  final List<Widget>? actions;
  final String? title;
  final Color? backgroundColor;
  final bool? centerTitle;
  final double? leadingWidth;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? ColorName.secondaryButtonColor,
      elevation: 0,
      leadingWidth: leadingWidth,
      centerTitle: centerTitle ?? true,
      bottomOpacity: 0,
      leading: leading ??
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: const EdgeInsets.all(4),
          ),
      actions: actions,
      title: Text(
        title ?? '',
        style: context.titleSmall.copyWith(
          color: ColorName.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height ?? ScreenUtil().setHeight(50));
}
