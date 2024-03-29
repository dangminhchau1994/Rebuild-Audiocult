import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  const UIButton({
    super.key,
    this.title,
    this.width,
    this.onPressed,
  });

  final String? title;
  final double? width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: MaterialButton(
        color: ColorName.buttonColor,
        onPressed: onPressed,
        child: Text(
          title ?? '',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorName.white,
              ),
        ),
      ),
    );
  }
}
