import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/router/app_router.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(const Duration(seconds: 2)).then(
          (value) => ref.read(appRouter).replace(MainFrameRoute()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 148,
        ),
      ),
    );
  }
}
