import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/account/account_view_model.dart';
import 'package:voice_club_clone/presentation/pages/account/state/account_view_state.dart';
import 'package:voice_club_clone/presentation/pages/account/widgets/account_page_ready.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  late final StateNotifierProvider<AccountViewModel, AccountViewState>
      accountViewModel;

  @override
  void initState() {
    super.initState();
    accountViewModel =
        StateNotifierProvider<AccountViewModel, AccountViewState>(
      (ref) => AccountViewModel(ref.read(appUserProvider.notifier)!),
    );
  }

  @override
  Widget build(BuildContext context) {
    AccountViewState state = ref.watch(accountViewModel);

    return state.maybeMap(
      ready: (value) => AccountPageReady(
        appUser: value.user,
        signOut: () => ref.read(accountViewModel.notifier).signOut(),
      ),
      loading: (value) => const SafeArea(
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      error: (value) => SafeArea(
        child: Scaffold(
          body: Center(
            child: Text("Error: ${value.errorMessage}"),
          ),
        ),
      ),
      orElse: () => Container(),
    );
  }
}
