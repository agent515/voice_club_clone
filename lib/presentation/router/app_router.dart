import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/main_frame/main_frame_page.dart';
import 'package:voice_club_clone/presentation/pages/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: MainFramePage),
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}

final appRouter = Provider(
  (ref) => AppRouter(),
);
