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
    RootRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RootPage(),
      );
    },
    VoiceCallRoomRoute.name: (routeData) {
      final args = routeData.argsAs<VoiceCallRoomRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: VoiceCallRoomPage(
          key: args.key,
          name: args.name,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          RootRoute.name,
          path: '/',
        ),
        RouteConfig(
          VoiceCallRoomRoute.name,
          path: '/voice-call-room-page',
        ),
      ];
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute()
      : super(
          RootRoute.name,
          path: '/',
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [VoiceCallRoomPage]
class VoiceCallRoomRoute extends PageRouteInfo<VoiceCallRoomRouteArgs> {
  VoiceCallRoomRoute({
    Key? key,
    required String name,
  }) : super(
          VoiceCallRoomRoute.name,
          path: '/voice-call-room-page',
          args: VoiceCallRoomRouteArgs(
            key: key,
            name: name,
          ),
        );

  static const String name = 'VoiceCallRoomRoute';
}

class VoiceCallRoomRouteArgs {
  const VoiceCallRoomRouteArgs({
    this.key,
    required this.name,
  });

  final Key? key;

  final String name;

  @override
  String toString() {
    return 'VoiceCallRoomRouteArgs{key: $key, name: $name}';
  }
}
