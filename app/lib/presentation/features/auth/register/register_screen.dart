import 'package:app/core/extension/app_extension.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/features/auth/register/widgets/resigter_term.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_dropdown.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(10),
        vertical: context.setHeight(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            UIDropDown(
              title: LocaleKeys.auth_choose_your_role.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_full_name.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_user_name.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_location.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_email.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: LocaleKeys.auth_password.tr(),
              onChanged: (value) {},
              isObscureText: true,
            ),
            context.verticalSpaceSmall,
            UICheckBox(
              title: LocaleKeys.auth_checked_term.tr(),
              onChanged: (value) {},
            ),
            context.verticalSpaceMedium,
            const RegisterTerm(),
            context.verticalSpaceMedium,
            UIButton(
              title: LocaleKeys.auth_sign_up.tr(),
              onPressed: () {},
            ),
            context.verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
