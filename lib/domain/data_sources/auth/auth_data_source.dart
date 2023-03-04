import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  Stream<User?> get userChangesStream;
  Future<void> verifyPhoneNumber(
      {required String phoneNumber,
      required void Function(String verificationId, int? forceResendingToken)
          onCodeSent,
      void Function(FirebaseAuthException e)? verificationFailed});
  Future<void> submitOtp({
    required String smsCode,
    required String verificationId,
  });
  Future<void> signOut();
}
