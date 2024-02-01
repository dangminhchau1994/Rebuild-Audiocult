import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// ignore: must_be_immutable
class UITextField extends StatefulWidget {
  UITextField({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText,
    this.onTap,
    this.isObscureText,
    this.onValidator,
  });

  final TextEditingController? controller;
  final Function()? onTap;
  final Function(String?)? onChanged;
  final String? Function(String?)? onValidator;
  final String? hintText;
  bool? isObscureText;

  @override
  State<UITextField> createState() => _UITextFieldState();
}

class _UITextFieldState extends State<UITextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.hintText ?? '',
      obscureText: showPassword,
      onTap: widget.onTap,
      validator: widget.onValidator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: context.bodySmall.copyWith(color: ColorName.smallTextColor),
      cursorColor: ColorName.white,
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        suffixIcon: widget.isObscureText ?? false
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: showPassword
                    ? const Icon(
                        Icons.visibility,
                        color: ColorName.smallTextColor,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: ColorName.smallTextColor,
                      ),
              )
            : null,
        hintText: widget.hintText,
      ),
    );
  }
}
