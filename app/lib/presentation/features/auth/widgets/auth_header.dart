import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorName.secondaryButtonColor,
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          SvgPicture.asset(
            Assets.icons.iconLogo.path,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
