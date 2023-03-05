import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';

abstract class AuthDataSource {
  User? get user;
  Stream<User?> get userChangesStream;
  Future<Either<AppError, void>> verifyPhoneNumber(
      {required String phoneNumber,
      required void Function(String verificationId, int? forceResendingToken)
          onCodeSent,
      void Function(FirebaseAuthException e)? verificationFailed});
  Future<Either<AppError, void>> submitOtp({
    required String smsCode,
    required String verificationId,
  });
  Future<Either<AppError, void>> signOut();
}
