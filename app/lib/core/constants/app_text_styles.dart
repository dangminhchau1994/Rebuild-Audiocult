import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle bodySmall = TextStyle(
    fontSize: 14.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: ScreenUtil().scaleHeight,
  );

  static TextStyle bodyMedium = TextStyle(
    fontSize: 16.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: ScreenUtil().scaleHeight,
  );

  static TextStyle titleSmall = TextStyle(
    fontSize: 18.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: ScreenUtil().scaleHeight,
  );

  static TextStyle titleMedium = TextStyle(
    fontSize: 24.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: ScreenUtil().scaleHeight,
  );
}
