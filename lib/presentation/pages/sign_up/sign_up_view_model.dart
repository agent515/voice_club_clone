import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/sign_up/state/sign_up_view_state.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class SignUpViewModel extends StateNotifier<SignUpViewState> {
  final AppUserProvider _appUserProvider;
  final StateController _userSignUpRemaningStateController;

  final GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  final TextEditingController nameTextController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();

  SignUpViewModel(
      this._appUserProvider, this._userSignUpRemaningStateController)
      : super(const SignUpViewState.ready());

  Future signUp() async {
    if (nameFormKey.currentState!.validate()) {
      final result = await _appUserProvider.createUser(nameTextController.text);
      result.fold(
        (l) => state = SignUpViewState.error(l.message),
        (r) => _userSignUpRemaningStateController.state = false,
      );
    }
  }
}
