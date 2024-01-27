import 'package:app/core/constants/app_text_styles.dart';
import 'package:app/core/constants/app_widget_theme.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        titleMedium: AppTextStyles.titleMedium,
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

  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;

  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
}

extension SizePadding on BuildContext {
  SizedBox get verticalSpaceSmall =>
      SizedBox(height: ScreenUtil().setHeight(10));

  SizedBox get verticalSpaceMedium =>
      SizedBox(height: ScreenUtil().setHeight(20));

  SizedBox get verticalSpaceLarge =>
      SizedBox(height: ScreenUtil().setHeight(30));

  SizedBox get horizontalSpaceSmall =>
      SizedBox(width: ScreenUtil().setHeight(10));

  SizedBox get horizontalSpaceMedium =>
      SizedBox(height: ScreenUtil().setHeight(20));

  SizedBox get horizontalSpaceLarge =>
      SizedBox(height: ScreenUtil().setHeight(30));
}

extension SizeWidget on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  double setWidth(double width) => ScreenUtil().setWidth(width);

  double setHeight(double height) => ScreenUtil().setHeight(height);
}
