import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/presentation/pages/home/home_view_model.dart';
import 'package:voice_club_clone/presentation/pages/home/widgets/my_app_bar.dart';
import 'package:voice_club_clone/presentation/router/app_router.dart';

class HomeReady extends ConsumerStatefulWidget {
  const HomeReady({
    super.key,
    required this.user,
    required this.viewModel,
  });
  final AppUser user;
  final HomeViewModel viewModel;

  @override
  ConsumerState<HomeReady> createState() => _HomeReadyState();
}

class _HomeReadyState extends ConsumerState<HomeReady> {
  Future<bool> getPermissions() async {
    if (Platform.isIOS) return true;
    await Permission.microphone.request();
    await Permission.bluetoothConnect.request();

    while ((await Permission.microphone.isDenied)) {
      await Permission.microphone.request();
    }
    while ((await Permission.bluetoothConnect.isDenied)) {
      await Permission.bluetoothConnect.request();
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await getPermissions();
            ref.read(appRouter).push(
                  VoiceCallRoomRoute(name: widget.user.name),
                );
          },
          child: const Text(
            'Join Room',
          ),
        ),
      ),
    );
  }
}
