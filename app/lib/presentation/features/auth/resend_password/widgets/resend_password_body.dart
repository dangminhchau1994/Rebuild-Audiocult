import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ResendPasswordBody extends StatelessWidget {
  const ResendPasswordBody({super.key});

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
            LocaleKeys.auth_resend_password.tr(),
            style: context.titleSmall
                .copyWith(color: ColorName.white, fontWeight: FontWeight.bold),
          ),
          context.verticalSpaceSmall,
          Text(
            LocaleKeys.auth_resend_password_email_associated.tr(),
            style: context.bodySmall.copyWith(color: ColorName.white),
          ),
          context.verticalSpaceMedium,
          UITextField(
            hintText: LocaleKeys.auth_email.tr(),
            onChanged: (value) {},
          ),
          context.verticalSpaceMedium,
          UIButton(
            title: LocaleKeys.submit.tr(),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
