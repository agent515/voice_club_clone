import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/account/account_page.dart';
import 'package:voice_club_clone/presentation/pages/home/home_page.dart';
import 'package:voice_club_clone/presentation/pages/main_frame/widgets/my_bottom_nav_item.dart';
import 'package:voice_club_clone/presentation/pages/wallet/wallet_page.dart';

class MainFramePage extends ConsumerStatefulWidget {
  const MainFramePage({
    super.key,
    this.index = 0,
  });

  final int index;

  @override
  ConsumerState<MainFramePage> createState() => _MainFramePageState();
}

class _MainFramePageState extends ConsumerState<MainFramePage> {
  late final StateProvider<int> bottomNavStateProvider;

  final List<Widget> tabs = const [
    HomePage(),
    WalletPage(),
    AccountPage(),
  ];

  @override
  void initState() {
    super.initState();
    bottomNavStateProvider = StateProvider<int>((ref) => widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[ref.watch(bottomNavStateProvider)],
        bottomNavigationBar: SizedBox(
          height: 72,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 16,
                    width: double.infinity,
                    color: Colors.transparent,
                  ),
                  Material(
                    elevation: 5.0,
                    child: Container(
                      height: 54,
                      width: double.infinity,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyBottomNavItem(
                    icon: Icons.home_outlined,
                    label: 'Home',
                    isSelected: ref.read(bottomNavStateProvider) == 0,
                    onTap: () =>
                        ref.read(bottomNavStateProvider.notifier).state = 0,
                  ),
                  MyBottomNavItem(
                    icon: Icons.wallet,
                    label: 'Wallet',
                    isSelected: ref.read(bottomNavStateProvider) == 1,
                    onTap: () =>
                        ref.read(bottomNavStateProvider.notifier).state = 1,
                  ),
                  MyBottomNavItem(
                    icon: Icons.person,
                    label: 'Account',
                    isSelected: ref.read(bottomNavStateProvider) == 2,
                    onTap: () =>
                        ref.read(bottomNavStateProvider.notifier).state = 2,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
