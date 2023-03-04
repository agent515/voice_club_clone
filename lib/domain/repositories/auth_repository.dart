import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';

abstract class AuthRepository {
  Stream<AppUser?> get userChangesStream;
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(
      String verificationId,
      int? forceResendingToken,
    )
        onCodeSent,
    void Function(AppError e)? verificationFailed,
  });
  Future<void> submitOtp({
    required String smsCode,
    required String verificationId,
  });
  Future<void> signOut();
}
