// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    ResendCodeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResendCodeScreen(),
      );
    },
    ResendPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResendPasswordScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResendCodeScreen]
class ResendCodeRoute extends PageRouteInfo<void> {
  const ResendCodeRoute({List<PageRouteInfo>? children})
      : super(
          ResendCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResendCodeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResendPasswordScreen]
class ResendPasswordRoute extends PageRouteInfo<void> {
  const ResendPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResendPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResendPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
