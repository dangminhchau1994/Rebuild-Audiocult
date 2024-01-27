import 'package:app/core/extension/app_extension.dart';
import 'package:app/presentation/features/auth/register/widgets/resigter_term.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_dropdown.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
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
            const UIDropDown(),
            context.verticalSpaceSmall,
            UITextField(
              hintText: 'Full Name',
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: 'Username (slug)',
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: 'Location',
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: 'Email',
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UITextField(
              hintText: 'Password',
              onChanged: (value) {},
            ),
            context.verticalSpaceSmall,
            UICheckBox(
              title:
                  'I’d like to recieve emails with content and notifications.',
              onChanged: (value) {},
            ),
            context.verticalSpaceMedium,
            const RegisterTerm(),
            context.verticalSpaceMedium,
            UIButton(
              title: 'Sign Up',
              onPressed: () {},
            ),
            context.verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
