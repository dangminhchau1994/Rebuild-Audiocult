import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class UICheckBox extends StatefulWidget {
  const UICheckBox({
    super.key,
    this.title,
    this.onChanged,
  });

  final String? title;
  final Function(bool)? onChanged;

  @override
  State<UICheckBox> createState() => _UICheckBoxState();
}

class _UICheckBoxState extends State<UICheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        visualDensity: VisualDensity.compact,
        activeColor: ColorName.buttonColor,
        title: Text(
          'Remember me',
          style: context.bodySmall.copyWith(
            color: ColorName.white,
          ),
        ),
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
