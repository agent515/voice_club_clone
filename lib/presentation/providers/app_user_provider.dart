import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/core/errors/user_sign_up_remaining_error.dart';
import 'package:voice_club_clone/data/repositories/auth_repository_impl.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/domain/repositories/auth_repository.dart';

final userSignUpRemainingStateProvider = StateProvider((ref) => false);

final appUserProvider =
    StateNotifierProvider<AppUserProvider, AsyncValue<AppUser?>>(
  (ref) => AppUserProvider(
    ref.read(authRepository),
    ref.read(userSignUpRemainingStateProvider.notifier),
  ),
);

class AppUserProvider extends StateNotifier<AsyncValue<AppUser?>> {
  final AuthRepository _authRepository;
  final StateController _userSignUpRemaningStateController;

  StreamSubscription<Future<Either<AppError, AppUser?>>>?
      userChangesStreamSubscription;

  AppUserProvider(this._authRepository, this._userSignUpRemaningStateController)
      : super(const AsyncValue.data(null)) {
    _init();
  }

  Future _init() async {
    userChangesStreamSubscription = _authRepository.userChangesStream.listen(
      (userEither) async {
        final userResult = await userEither;
        userResult.fold(
          (l) {
            if (l is UserSignUpRemaningError) {
              _userSignUpRemaningStateController.state = true;
            }
            state = const AsyncValue.data(null);
          },
          (r) {
            state = AsyncValue.data(r);
          },
        );
      },
    );
  }

  Future<Either<AppError, void>> verifyPhoneNumber(
          String phoneNumber, void Function(String, int?) onCodeSent) async =>
      _authRepository.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        onCodeSent: onCodeSent,
      );

  Future<Either<AppError, void>> submitOtp(
          String smsCode, String verificationId) async =>
      _authRepository.submitOtp(
        smsCode: smsCode,
        verificationId: verificationId,
      );

  Future<Either<AppError, void>> createUser(String name) async =>
      _authRepository.createUser(name);

  Future<Either<AppError, void>> signOut() async => _authRepository.signOut();

  @override
  void dispose() async {
    await userChangesStreamSubscription?.cancel();
    super.dispose();
  }
}
