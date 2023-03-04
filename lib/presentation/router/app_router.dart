import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/root/root_page.dart';
import 'package:voice_club_clone/presentation/pages/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[AutoRoute(page: RootPage, initial: true)],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}

final appRouter = Provider(
  (ref) => AppRouter(),
);
