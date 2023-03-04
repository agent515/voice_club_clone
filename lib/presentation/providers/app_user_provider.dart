import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/data/repositories/auth_repository_impl.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/domain/repositories/auth_repository.dart';

final appUserProvider =
    StateNotifierProvider((ref) => AppUserProvider(ref.read(authRepository)));

class AppUserProvider extends StateNotifier<AppUser?> {
  final AuthRepository _authRepository;

  StreamSubscription<Future<AppUser?>>? userChangesStreamSubscription;

  AppUserProvider(this._authRepository) : super(null) {
    _init();
  }

  Future _init() async {
    userChangesStreamSubscription = _authRepository.userChangesStream.listen(
      (user) async {
        state = await user;
      },
    );
  }

  @override
  void dispose() async {
    await userChangesStreamSubscription?.cancel();
    super.dispose();
  }
}
