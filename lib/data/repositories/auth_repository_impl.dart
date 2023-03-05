import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/data/data_sources/auth/auth_data_source_impl.dart';
import 'package:voice_club_clone/data/data_sources/remote/remote_data_source_impl.dart';
import 'package:voice_club_clone/data/dto/app_user_dto.dart';
import 'package:voice_club_clone/domain/data_sources/auth/auth_data_source.dart';
import 'package:voice_club_clone/domain/data_sources/remote/remote_data_source.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/domain/repositories/auth_repository.dart';

final authRepository = Provider(
  (ref) => AuthRepositoryImpl(
    ref.read(authDataSource),
    ref.read(remoteDataSource),
  ),
);

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;
  final RemoteDataSource _remoteDataSource;

  StreamController<Future<Either<AppError, AppUser?>>> userStreamController =
      StreamController.broadcast();

  AuthRepositoryImpl(
    this._authDataSource,
    this._remoteDataSource,
  ) {
    _init();
  }

  _init() async {
    _authDataSource.userChangesStream.listen(
      (user) async => userStreamController.add(
        _firebaseUserToAppUser(user),
      ),
    );
  }

  @override
  Stream<Future<Either<AppError, AppUser?>>> get userChangesStream =>
      userStreamController.stream;

  Future<Either<AppError, AppUser?>> _firebaseUserToAppUser(User? user) async {
    if (user == null) return const Right(null);

    final getUserResult = await _remoteDataSource.getUser(user.uid);
    return getUserResult.fold(
      (l) => Left(l),
      (r) => Right(r.toEntity()),
    );
  }

  @override
  Future<Either<AppError, void>> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(String verificationId, int? forceResendingToken)
        onCodeSent,
    void Function(AppError e)? verificationFailed,
  }) async =>
      _authDataSource.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        onCodeSent: onCodeSent,
        verificationFailed: (e) {},
      );

  @override
  Future<Either<AppError, void>> submitOtp(
          {required String smsCode, required String verificationId}) async =>
      _authDataSource.submitOtp(
        smsCode: smsCode,
        verificationId: verificationId,
      );

  @override
  Future<Either<AppError, void>> signOut() async => _authDataSource.signOut();

  @override
  Future<Either<AppError, void>> updateUser(AppUser user) async =>
      _remoteDataSource.updateUser(user.toDto());

  @override
  Future<Either<AppError, void>> createUser(String name) async {
    User? user = _authDataSource.user;

    if (user != null) {
      AppUserDto appUserDto = AppUserDto(
        id: user.uid,
        name: name,
        phone: user.phoneNumber!,
      );
      final result = await _remoteDataSource.updateUser(appUserDto);
      return result.fold(
        (l) => Left(l),
        (r) {
          userStreamController.add(
            Future.value(
              Right(
                appUserDto.toEntity(),
              ),
            ),
          );
          return const Right(null);
        },
      );
    }
    return Left(AppError(message: "User not signed in"));
  }
}
