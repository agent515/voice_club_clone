import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/state/sign_in_view_state.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class SignInViewModel extends StateNotifier<SignInViewState> {
  final AppUserProvider _appUserProvider;
  final GlobalKey<FormState> phoneFormKey = GlobalKey<FormState>();
  final TextEditingController phoneTextController = TextEditingController();
  final FocusNode phoneFocusNode = FocusNode();

  final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  final TextEditingController otpTextController = TextEditingController();
  final FocusNode otpFocusNode = FocusNode();

  String? _verificationId;

  SignInViewModel(this._appUserProvider) : super(const SignInViewState.phone());

  Future submitPhone() async {
    if (phoneFormKey.currentState!.validate()) {
      final result = await _appUserProvider.verifyPhoneNumber(
        phoneTextController.text,
        (verificationId, id) {
          _verificationId = verificationId;
          state = const SignInViewState.otp();
        },
      );
      result.fold(
        (l) => state = SignInViewState.error(l.message),
        (r) => null,
      );
    }
  }

  Future submitOtp() async {
    if (otpFormKey.currentState!.validate()) {
      state = const SignInViewState.loading();
      final result = await _appUserProvider.submitOtp(
        otpTextController.text,
        _verificationId!,
      );
      result.fold(
        (l) => state = SignInViewState.error(l.message),
        (r) => null,
      );
    }
  }

  void goBackToPhone() {
    state = const SignInViewState.phone();
  }
}
