import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/home/home_view_model.dart';
import 'package:voice_club_clone/presentation/pages/home/state/home_view_state.dart';
import 'package:voice_club_clone/presentation/pages/home/widgets/home_ready.dart';
import 'package:voice_club_clone/presentation/providers/app_user_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final StateNotifierProvider<HomeViewModel, HomeViewState> homeViewModel;
  late HomeViewModel viewModel;

  @override
  void initState() {
    super.initState();
    homeViewModel = StateNotifierProvider<HomeViewModel, HomeViewState>(
      (ref) => HomeViewModel(ref.read(appUserProvider.notifier)),
    );
    viewModel = ref.read(homeViewModel.notifier);
  }

  @override
  void didChangeDependencies() {
    viewModel = ref.read(homeViewModel.notifier);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    HomeViewState state = ref.watch(homeViewModel);

    return state.maybeMap(
      ready: (value) => HomeReady(
        user: value.user,
        viewModel: ref.read(homeViewModel.notifier),
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
