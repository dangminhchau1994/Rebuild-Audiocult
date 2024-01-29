import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RegisterTerm extends StatelessWidget {
  const RegisterTerm({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: LocaleKeys.auth_confirm_term.tr(),
            style: context.bodySmall.copyWith(
              color: ColorName.smallTextColor,
            ),
          ),
          TextSpan(
            text: LocaleKeys.auth_underline_term.tr(),
            style: context.bodySmall.copyWith(
              color: ColorName.smallTextColor,
              decoration: TextDecoration.underline,
              decorationColor: ColorName.smallTextColor,
              decorationThickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
