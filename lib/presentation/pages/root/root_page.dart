import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/main_frame/main_frame_page.dart';
import 'package:voice_club_clone/presentation/pages/root/root_page_view_model.dart';
import 'package:voice_club_clone/presentation/pages/root/state/root_page_view_state.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/sign_in_page.dart';
import 'package:voice_club_clone/presentation/pages/sign_up/sign_up_page.dart';
import 'package:voice_club_clone/presentation/pages/splash/splash_page.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class RootPage extends ConsumerStatefulWidget {
  const RootPage({super.key});

  @override
  ConsumerState<RootPage> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  late final StateNotifierProvider<RootPageViewModel, RootPageViewState>
      rootViewModel;

  @override
  void initState() {
    super.initState();
    rootViewModel = StateNotifierProvider<RootPageViewModel, RootPageViewState>(
      (ref) => RootPageViewModel(
        ref.read(appUserProvider.notifier),
        ref.read(userSignUpRemainingStateProvider.notifier),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    RootPageViewState state = ref.watch(rootViewModel);

    return state.when(
      auth: () => const SignInPage(),
      user: () => const MainFramePage(),
      signUp: () => const SignUpPage(),
      loading: (showSplashScreen) => showSplashScreen
          ? const SplashPage()
          : const SafeArea(
              child: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
      error: (errorMessage) => SafeArea(
        child: Scaffold(
          body: Center(
            child: Text("Error: $errorMessage"),
          ),
        ),
      ),
    );
  }
}
