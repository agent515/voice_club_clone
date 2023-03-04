import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/data/repositories/auth_repository_impl.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/domain/repositories/auth_repository.dart';

final isNewUserStateProvider = StateProvider((ref) => false);

final appUserProvider =
    StateNotifierProvider<AppUserProvider, AsyncValue<AppUser?>>(
  (ref) => AppUserProvider(
    ref.read(authRepository),
  ),
);

class AppUserProvider extends StateNotifier<AsyncValue<AppUser?>> {
  final AuthRepository _authRepository;

  StreamSubscription<Future<AppUser?>>? userChangesStreamSubscription;

  AppUserProvider(this._authRepository) : super(const AsyncValue.data(null)) {
    _init();
  }

  Future _init() async {
    userChangesStreamSubscription = _authRepository.userChangesStream.listen(
      (user) async {
        AppUser? appUser = await user;
        state = AsyncValue.data(appUser);
      },
    );
  }

  @override
  void dispose() async {
    await userChangesStreamSubscription?.cancel();
    super.dispose();
  }
}
