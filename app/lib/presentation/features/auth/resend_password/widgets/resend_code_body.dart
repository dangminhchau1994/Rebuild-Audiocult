import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ResendCodeBody extends StatelessWidget {
  const ResendCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(20),
        vertical: context.setHeight(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.auth_check_mail.tr(),
            style: context.titleSmall
                .copyWith(color: ColorName.white, fontWeight: FontWeight.bold),
          ),
          context.verticalSpaceSmall,
          Text(
            LocaleKeys.auth_check_mail_content.tr(),
            style: context.bodySmall.copyWith(color: ColorName.mediumTextColor),
          ),
          context.verticalSpaceMedium,
          UITextField(
            hintText: LocaleKeys.auth_input_code.tr(),
            onChanged: (value) {},
            onValidator: (value) {
              return null;
            },
          ),
          context.verticalSpaceSmall,
          UIButton(
            title: LocaleKeys.save.tr(),
            onPressed: () {},
          ),
          context.verticalSpaceMedium,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocaleKeys.auth_check_mail_not_received.tr(),
                  style: context.bodySmall.copyWith(
                    color: ColorName.white,
                  ),
                ),
                TextSpan(
                  text: LocaleKeys.auth_check_try_another.tr(),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.router.pop(),
                  style: context.bodySmall.copyWith(
                    color: ColorName.lightBlue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
