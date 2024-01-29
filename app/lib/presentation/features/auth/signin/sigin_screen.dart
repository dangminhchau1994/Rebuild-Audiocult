import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(16),
        vertical: context.setHeight(24),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            UITextField(
              hintText: LocaleKeys.auth_full_name.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_password.tr(),
              isObscureText: true,
              onChanged: (value) {},
            ),
            context.verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: UICheckBox(
                    onChanged: (value) {},
                    title: LocaleKeys.auth_remember_me.tr(),
                  ),
                ),
                Flexible(
                  child: Text(
                    LocaleKeys.auth_forgot_password.tr(),
                    style: context.bodySmall.copyWith(
                      color: ColorName.lightBlue,
                    ),
                  ),
                ),
              ],
            ),
            context.verticalSpaceMedium,
            UIButton(
              title: LocaleKeys.auth_sign_in.tr(),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
