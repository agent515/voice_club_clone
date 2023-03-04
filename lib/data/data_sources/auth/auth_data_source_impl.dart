import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/domain/data_sources/auth/auth_data_source.dart';

final authDataSource = Provider((ref) => AuthDataSourceImpl());

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Stream<User?> get userChangesStream => _auth.userChanges();

  @override
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(String verificationId, int? forceResendingToken)
        onCodeSent,
    void Function(FirebaseAuthException e)? verificationFailed,
  }) async {
    try {
      final result = await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) {
          debugPrint("VERIFICATION COMPLETED");
          _auth.signInWithCredential(credential);
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
      return result;
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> submitOtp({
    required String smsCode,
    required String verificationId,
  }) async {
    // Create a PhoneAuthCredential with the code
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    try {
      await _auth.currentUser!.multiFactor.enroll(
        PhoneMultiFactorGenerator.getAssertion(
          credential,
        ),
      );
      debugPrint("success");
    } on FirebaseAuthException catch (e) {
      print(e.message);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }
}
