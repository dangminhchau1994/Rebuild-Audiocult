import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UITextField extends StatelessWidget {
  const UITextField({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'input',
      style: context.bodySmall.copyWith(
        color: ColorName.white,
      ),
      cursorColor: ColorName.white,
      controller: controller,
      onChanged: (value) {},
      decoration: const InputDecoration(
        hintText: 'Name',
      ),
    );
  }
}
