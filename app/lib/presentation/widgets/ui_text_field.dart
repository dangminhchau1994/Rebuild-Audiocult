import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UITextField extends StatelessWidget {
  const UITextField({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText,
  });

  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: hintText ?? '',
      style: context.bodySmall.copyWith(color: ColorName.smallTextColor),
      cursorColor: ColorName.white,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
