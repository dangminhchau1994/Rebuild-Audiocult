import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

mixin DialogMixin on StatelessWidget {
  Future<void> showAlertDialog(
    BuildContext context,
    String title,
    String content, {
    Function()? onConfirm,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorName.backgroundColor,
          title: Text(
            title,
            style: context.bodyMedium.copyWith(
              color: ColorName.buttonColor,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                content,
                style: context.bodySmall.copyWith(
                  color: ColorName.white,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                LocaleKeys.cancel.tr(),
                style: context.bodySmall.copyWith(
                  color: ColorName.white,
                ),
              ),
              onPressed: () {
                context.router.pop();
              },
            ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                LocaleKeys.ok.tr(),
                style: context.bodySmall.copyWith(
                  color: ColorName.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
