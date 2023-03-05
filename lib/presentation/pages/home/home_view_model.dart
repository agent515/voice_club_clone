import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/home/state/home_view_state.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class HomeViewModel extends StateNotifier<HomeViewState> {
  final AppUserProvider _appUserProvider;

  HomeViewModel(this._appUserProvider) : super(const HomeViewState.loading()) {
    AsyncData asyncData = _appUserProvider.state as AsyncData;
    state = HomeViewState.ready(asyncData.value);
  }
}
