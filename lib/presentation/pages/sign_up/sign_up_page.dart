import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/sign_up/sign_up_view_model.dart';
import 'package:voice_club_clone/presentation/pages/sign_up/state/sign_up_view_state.dart';
import 'package:voice_club_clone/presentation/pages/sign_up/widgets/sign_up_ready.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late final StateNotifierProvider<SignUpViewModel, SignUpViewState>
      _signUpViewModel;
  late SignUpViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _signUpViewModel = StateNotifierProvider(
      (ref) => SignUpViewModel(
        ref.read(appUserProvider.notifier),
        ref.read(userSignUpRemainingStateProvider.notifier),
      ),
    );
    _viewModel = ref.read(_signUpViewModel.notifier);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SignUpViewState state = ref.watch(_signUpViewModel);

    ref.listen(
      _signUpViewModel,
      (_, state) => state.maybeMap(
        ready: (value) {
          _viewModel.nameFocusNode.requestFocus();
          return null;
        },
        orElse: () => null,
      ),
    );

    return state.maybeMap(
      ready: (value) => SignUpReady(
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
