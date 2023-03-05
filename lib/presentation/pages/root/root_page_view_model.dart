import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/presentation/pages/root/state/root_page_view_state.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class RootPageViewModel extends StateNotifier<RootPageViewState> {
  final AppUserProvider _appUserProvider;
  final StateController _userSignUpRemaningStateController;

  bool _showSplashScreen = true;

  late AsyncValue<AppUser?> _appUserState;
  late bool _userSignUpRemaningState;

  RootPageViewModel(
      this._appUserProvider, this._userSignUpRemaningStateController)
      : super(const RootPageViewState.loading(true)) {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      _showSplashScreen = false;
      _updateState();
    });
    _appUserProvider.addListener(
      (appUserState) {
        _appUserState = appUserState;

        if (!_showSplashScreen) {
          _updateState();
        }
      },
    );
    _userSignUpRemaningStateController.addListener(
      (state) {
        _userSignUpRemaningState = state;
        if (!_showSplashScreen) {
          _updateState();
        }
      },
    );
  }

  void _updateState() {
    if (_appUserState.isLoading) {
      state = const RootPageViewState.loading(false);
    } else if (_appUserState is AsyncError) {
      state = RootPageViewState.error(_appUserState.error.toString());
    } else if (_appUserState.hasValue) {
      AppUser? appUser = _appUserState.value;
      if (appUser != null) {
        state = const RootPageViewState.user();
      } else {
        if (_userSignUpRemaningState) {
          state = const RootPageViewState.signUp();
        } else {
          state = const RootPageViewState.auth();
        }
      }
    }
  }
}
