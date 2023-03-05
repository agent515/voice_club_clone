import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/account/state/account_view_state.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class AccountViewModel extends StateNotifier<AccountViewState> {
  final AppUserProvider _appUserProvider;

  AccountViewModel(this._appUserProvider)
      : super(const AccountViewState.loading()) {
    AsyncData asyncData = _appUserProvider.state as AsyncData;
    state = AccountViewState.ready(asyncData.value);
  }

  Future signOut() async {
    final result = await _appUserProvider.signOut();
    return result.fold(
      (l) => state = AccountViewState.error(l.message),
      (r) => null,
    );
  }
}
