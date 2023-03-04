import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/presentation/pages/root/state/root_page_view_state.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class RootPageViewModel extends StateNotifier<RootPageViewState> {
  final AppUserProvider _appUserProvider;

  bool _showSplashScreen = true;

  late AsyncValue<AppUser?> _appUserState;

  RootPageViewModel(this._appUserProvider)
      : super(const RootPageViewState.loading(true)) {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      _showSplashScreen = false;
      _updateState(_appUserState);
    });
    _appUserProvider.addListener(
      (appUserState) {
        if (_showSplashScreen) {
          _appUserState = appUserState;
        }
      },
    );
  }

  void _updateState(AsyncValue<AppUser?> appUserState) {
    if (appUserState.isLoading) {
      state = const RootPageViewState.loading(false);
    } else if (appUserState is AsyncError) {
      state = RootPageViewState.error(appUserState.error.toString());
    } else if (appUserState.hasValue) {
      AppUser? appUser = appUserState.value;
      if (appUser != null) {
        state = const RootPageViewState.user();
      } else {
        state = const RootPageViewState.auth();
      }
    }
  }
}
