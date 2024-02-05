import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class UILoading extends StatelessWidget {
  const UILoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: ColorName.buttonColor,
      ),
    );
  }
}
