import 'package:app/core/constants/app_text_styles.dart';
import 'package:app/core/constants/app_widget_theme.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension ThemeExtension on BuildContext {
  ThemeData get myTheme {
    return ThemeData(
      buttonTheme: AppWidgetTheme.buttonThemeData,
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

extension ShowToast on BuildContext {
  void showSuccess(String message) => FToast().init(this).showToast(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
          decoration: BoxDecoration(
            color: ColorName.inputFillColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1),
          ),
          child: ListTile(
            trailing: SizedBox(
              width: 50,
              height: 50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        FToast().init(this).removeQueuedCustomToasts();
                        FToast().init(this).removeCustomToast();
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorName.buttonColor,
              ),
              child: SvgPicture.asset(
                Assets.icons.iconChecked.path,
                fit: BoxFit.scaleDown,
                height: ScreenUtil().setHeight(14),
                width: ScreenUtil().setWidth(14),
              ),
            ),
            title: Text(
              LocaleKeys.success.tr(),
              style: bodyMedium.copyWith(color: ColorName.white),
            ),
            subtitle: Text(
              message,
              style: bodySmall.copyWith(color: ColorName.white),
            ),
          ),
        ),
        gravity: ToastGravity.TOP,
        toastDuration: const Duration(milliseconds: 1000),
      );

  void showError(String message) => FToast().init(this).showToast(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
          decoration: BoxDecoration(
            color: ColorName.inputFillColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1),
          ),
          child: ListTile(
            trailing: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 8),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      FToast().init(this).removeQueuedCustomToasts();
                      FToast().init(this).removeCustomToast();
                    },
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container()
              ],
            ),
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorName.error,
              ),
              child: SvgPicture.asset(
                Assets.icons.iconExclamationMark.path,
                fit: BoxFit.scaleDown,
                height: ScreenUtil().setHeight(14),
                width: ScreenUtil().setWidth(14),
              ),
            ),
            title: Text(
              LocaleKeys.error.tr(),
              style: bodyMedium.copyWith(color: ColorName.white),
            ),
            subtitle: Text(
              message,
              style: bodySmall.copyWith(color: ColorName.white),
            ),
          ),
        ),
        gravity: ToastGravity.TOP,
        toastDuration: const Duration(milliseconds: 1000),
      );
}

extension SizeWidget on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  double setWidth(double width) => ScreenUtil().setWidth(width);

  double setHeight(double height) => ScreenUtil().setHeight(height);
}
