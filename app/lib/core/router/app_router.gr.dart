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
    AtlasRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AtlasScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    EventRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MainRouteArgs>(
          orElse: () => MainRouteArgs(userId: pathParams.optInt('userId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainScreen(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    MusicRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MusicScreen(),
      );
    },
    ResendCodeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResendCodeScreen(),
      );
    },
    ResendNewPasswordRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ResendNewPasswordRouteArgs>(
          orElse: () =>
              ResendNewPasswordRouteArgs(code: pathParams.optString('code')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResendNewPasswordScreen(
          key: args.key,
          code: args.code,
        ),
      );
    },
    ResendPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResendPasswordScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [AtlasScreen]
class AtlasRoute extends PageRouteInfo<void> {
  const AtlasRoute({List<PageRouteInfo>? children})
      : super(
          AtlasRoute.name,
          initialChildren: children,
        );

  static const String name = 'AtlasRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [EventScreen]
class EventRoute extends PageRouteInfo<void> {
  const EventRoute({List<PageRouteInfo>? children})
      : super(
          EventRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({
    Key? key,
    int? userId,
    List<PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<MainRouteArgs> page = PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    this.userId,
  });

  final Key? key;

  final int? userId;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [MusicScreen]
class MusicRoute extends PageRouteInfo<void> {
  const MusicRoute({List<PageRouteInfo>? children})
      : super(
          MusicRoute.name,
          initialChildren: children,
        );

  static const String name = 'MusicRoute';

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
/// [ResendNewPasswordScreen]
class ResendNewPasswordRoute extends PageRouteInfo<ResendNewPasswordRouteArgs> {
  ResendNewPasswordRoute({
    Key? key,
    String? code,
    List<PageRouteInfo>? children,
  }) : super(
          ResendNewPasswordRoute.name,
          args: ResendNewPasswordRouteArgs(
            key: key,
            code: code,
          ),
          rawPathParams: {'code': code},
          initialChildren: children,
        );

  static const String name = 'ResendNewPasswordRoute';

  static const PageInfo<ResendNewPasswordRouteArgs> page =
      PageInfo<ResendNewPasswordRouteArgs>(name);
}

class ResendNewPasswordRouteArgs {
  const ResendNewPasswordRouteArgs({
    this.key,
    this.code,
  });

  final Key? key;

  final String? code;

  @override
  String toString() {
    return 'ResendNewPasswordRouteArgs{key: $key, code: $code}';
  }
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

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
