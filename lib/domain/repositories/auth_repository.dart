import 'package:dartz/dartz.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';

abstract class AuthRepository {
  Stream<Future<AppUser?>> get userChangesStream;
  Future<Either<AppError, void>> updateUser(AppUser user);
  // Sign in
  Future<Either<AppError, void>> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(
      String verificationId,
      int? forceResendingToken,
    )
        onCodeSent,
    required void Function(bool) isNewUser,
    void Function(AppError e)? verificationFailed,
  });
  Future<Either<AppError, void>> submitOtp({
    required String smsCode,
    required String verificationId,
  });
  // Sign out
  Future<Either<AppError, void>> signOut();
}
