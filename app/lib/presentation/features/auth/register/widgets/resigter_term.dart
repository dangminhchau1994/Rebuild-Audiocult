import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class RegisterTerm extends StatelessWidget {
  const RegisterTerm({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:
                'By signing up, you confirm that you’ve read and accepted our',
            style: context.bodySmall.copyWith(
              color: ColorName.smallTextColor,
            ),
          ),
          TextSpan(
            text: ' Accept Terms & Conditions',
            style: context.bodySmall.copyWith(
              color: ColorName.smallTextColor,
              decoration: TextDecoration.underline,
              decorationColor: ColorName.smallTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
