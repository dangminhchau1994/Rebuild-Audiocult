import 'package:app/core/extension/app_extension.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.onChanged?.call(isChecked);
        });
      },
      child: Row(
        children: [
          Container(
            width: context.setWidth(20),
            height: context.setHeight(20),
            decoration: BoxDecoration(
              color:
                  isChecked ? ColorName.buttonColor : ColorName.inputFillColor,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: ColorName.inputBorderColor,
                width: 2,
              ),
            ),
            child: Visibility(
              visible: isChecked,
              child: SvgPicture.asset(
                Assets.icons.iconChecked.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          context.horizontalSpaceSmall,
          Flexible(
            child: Text(
              widget.title ?? '',
              style: context.bodySmall.copyWith(
                color: ColorName.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
