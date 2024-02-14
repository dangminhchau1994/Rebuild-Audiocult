import 'package:app/core/constants/app_route_names.dart';
import 'package:app/presentation/features/auth/auth_screen.dart';
import 'package:app/presentation/features/auth/resend_password/resend_code_screen.dart';
import 'package:app/presentation/features/auth/resend_password/resend_new_password_screen.dart';
import 'package:app/presentation/features/auth/resend_password/resend_password_screen.dart';
import 'package:app/presentation/features/home/home_screen.dart';
import 'package:app/presentation/features/main/main_screen.dart';
import 'package:app/presentation/features/splash/splash_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: AuthRoute.page,
          path: AppRouteNames.auth,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: AppRouteNames.home,
        ),
        AutoRoute(
          page: MainRoute.page,
          path: AppRouteNames.main,
        ),
        AutoRoute(
          page: ResendCodeRoute.page,
          path: AppRouteNames.resendCode,
        ),
        AutoRoute(
          page: ResendPasswordRoute.page,
          path: AppRouteNames.resendPassword,
        ),
        AutoRoute(
          page: ResendNewPasswordRoute.page,
          path: AppRouteNames.createNewPassword,
        )
      ];
}
