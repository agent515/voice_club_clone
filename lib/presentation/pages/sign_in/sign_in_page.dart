import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/sign_in_view_model.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/state/sign_in_view_state.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/widgets/sign_in_otp.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/widgets/sign_in_phone.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  late final StateNotifierProvider<SignInViewModel, SignInViewState>
      _signInViewModel;
  late SignInViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _signInViewModel = StateNotifierProvider(
      (ref) => SignInViewModel(
        ref.read(appUserProvider.notifier),
      ),
    );
    _viewModel = ref.read(_signInViewModel.notifier);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SignInViewState state = ref.watch(_signInViewModel);

    ref.listen(
      _signInViewModel,
      (_, state) => state.maybeMap(
        phone: (value) {
          _viewModel.phoneFocusNode.requestFocus();
          return null;
        },
        otp: (value) {
          _viewModel.otpFocusNode.requestFocus();
          return null;
        },
        orElse: () => null,
      ),
    );

    return state.maybeMap(
      phone: (value) => SignInPhone(
        viewModel: _viewModel,
      ),
      otp: (value) => SignInOtp(
        viewModel: _viewModel,
      ),
      error: (value) => Scaffold(
        body: Center(
          child: Text(value.errorMessage),
        ),
      ),
      loading: (value) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      orElse: () => Container(),
    );
  }
}
