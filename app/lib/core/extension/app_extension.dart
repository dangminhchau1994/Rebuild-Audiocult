import 'package:app/core/constants/app_text_styles.dart';
import 'package:app/core/constants/app_widget_theme.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get myTheme {
    return ThemeData(
      elevatedButtonTheme: AppWidgetTheme.elevatedButtonThemeData,
      inputDecorationTheme: AppWidgetTheme.inputDecorationTheme,
      checkboxTheme: AppWidgetTheme.checkboxThemeData,
      tabBarTheme: AppWidgetTheme.tabBarTheme,
      fontFamily: FontFamily.nunitoSans,
      appBarTheme: AppWidgetTheme.appBarTheme,
      textTheme: TextTheme(
        titleSmall: AppTextStyles.titleSmall,
        bodySmall: AppTextStyles.bodySmall,
        bodyMedium: AppTextStyles.bodyMedium,
      ),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: ColorName.backgroundColor,
      ),
    );
  }
}

extension TextThemeExtension on BuildContext {
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;

  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
}
