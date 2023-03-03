// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    MainFrameRoute.name: (routeData) {
      final args = routeData.argsAs<MainFrameRouteArgs>(
          orElse: () => const MainFrameRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MainFramePage(
          key: args.key,
          index: args.index,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          MainFrameRoute.name,
          path: '/main-frame-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [MainFramePage]
class MainFrameRoute extends PageRouteInfo<MainFrameRouteArgs> {
  MainFrameRoute({
    Key? key,
    int index = 0,
  }) : super(
          MainFrameRoute.name,
          path: '/main-frame-page',
          args: MainFrameRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'MainFrameRoute';
}

class MainFrameRouteArgs {
  const MainFrameRouteArgs({
    this.key,
    this.index = 0,
  });

  final Key? key;

  final int index;

  @override
  String toString() {
    return 'MainFrameRouteArgs{key: $key, index: $index}';
  }
}
