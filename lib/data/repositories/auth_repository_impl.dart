import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/data/data_sources/auth/auth_data_source_impl.dart';
import 'package:voice_club_clone/domain/data_sources/auth/auth_data_source.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/domain/repositories/auth_repository.dart';

final authRepository = Provider(
  (ref) => AuthRepositoryImpl(
    ref.read(authDataSource),
  ),
);

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Stream<AppUser?> get userChangesStream => throw UnimplementedError();

  @override
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(String verificationId, int? forceResendingToken)
        onCodeSent,
    void Function(AppError e)? verificationFailed,
  }) async {
    // TODO: implement verifyPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<void> submitOtp(
      {required String smsCode, required String verificationId}) {
    // TODO: implement submitOtp
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
