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
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: ColorName.inputBorderColor,
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
