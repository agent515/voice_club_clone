import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/domain/data_sources/auth/auth_data_source.dart';

final authDataSource = Provider((ref) => AuthDataSourceImpl());

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Stream<User?> get userChangesStream => _auth.userChanges();

  @override
  Future<Either<AppError, void>> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(String verificationId, int? forceResendingToken)
        onCodeSent,
    required void Function(bool val) isNewUser,
    void Function(FirebaseAuthException e)? verificationFailed,
  }) async {
    try {
      final result = await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) async {
          debugPrint("VERIFICATION COMPLETED");
          UserCredential userCredential =
              await _auth.signInWithCredential(credential);

          isNewUser(userCredential.additionalUserInfo?.isNewUser ?? false);
        },
        verificationFailed: (e) {
          print(e.code);
          print(e);
          if (verificationFailed != null) {
            verificationFailed(e);
          }
        },
        codeSent: onCodeSent,
        codeAutoRetrievalTimeout: (_) {},
      );
      return const Right(null);
    } catch (e) {
      print(e);
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, void>> submitOtp({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      // Create a PhoneAuthCredential with the code
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      await _auth.currentUser!.multiFactor.enroll(
        PhoneMultiFactorGenerator.getAssertion(
          credential,
        ),
      );
      debugPrint("success");

      return const Right(null);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return Left(AppError(message: e.message ?? 'Unknown Error'));
    } catch (e) {
      print(e);
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, void>> signOut() async {
    try {
      await _auth.signOut();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return Left(AppError(message: e.message ?? 'Unknown Error'));
    } catch (e) {
      print(e);
      return Left(AppError(message: e.toString()));
    }
  }
}
