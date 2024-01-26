import 'package:app/gen/colors.gen.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get myTheme {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.fromLTRB(16, 8, 16, 8),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            ColorName.white.withOpacity(0.1),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            ColorName.buttonColor,
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: ColorName.inputBorderColor,
        labelColor: ColorName.buttonColor,
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            color: ColorName.buttonColor,
            width: 2,
          ),
        ),
        labelStyle: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 20 / 10,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 20 / 10,
        ),
      ),
      fontFamily: FontFamily.nunitoSans,
      appBarTheme: const AppBarTheme(
        color: ColorName.backgroundColor,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 28 / 10,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 20 / 10,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 24 / 10,
        ),
      ),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: ColorName.backgroundColor,
      ),
    );
  }
}
