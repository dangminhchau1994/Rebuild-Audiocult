import 'package:app/core/constants/app_text_styles.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class AppWidgetTheme {
  static AppBarTheme appBarTheme = const AppBarTheme(
    color: ColorName.backgroundColor,
    elevation: 0,
  );

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
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
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    hintStyle: AppTextStyles.bodySmall.copyWith(color: ColorName.white),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        color: ColorName.inputBorderColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        color: ColorName.inputBorderColor,
      ),
    ),
    filled: true,
    fillColor: ColorName.inputFillColor,
  );

  static CheckboxThemeData checkboxThemeData = CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      side: BorderSide(
        width: 2,
        color: ColorName.inputBorderColor,
      ),
    ),
    fillColor: MaterialStateProperty.all<Color>(
      ColorName.inputFillColor,
    ),
    overlayColor: MaterialStateProperty.all<Color>(
      ColorName.white.withOpacity(0.1),
    ),
    checkColor: MaterialStateProperty.all<Color>(
      ColorName.white,
    ),
  );

  static TabBarTheme tabBarTheme = TabBarTheme(
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
    labelStyle: AppTextStyles.bodySmall,
    unselectedLabelStyle: AppTextStyles.bodySmall,
  );
}
