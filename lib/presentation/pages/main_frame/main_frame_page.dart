import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/presentation/pages/account/account_page.dart';
import 'package:voice_club_clone/presentation/pages/home/home_page.dart';
import 'package:voice_club_clone/presentation/pages/wallet/wallet_page.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

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

class MyBottomNavItem extends StatelessWidget {
  const MyBottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashFactory: InkSplash.splashFactory,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          isSelected
              ? Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                    border: Border.all(
                      color: AppColors.white,
                      width: 4,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    icon,
                    color: AppColors.gray,
                  ),
                ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      ),
    );
  }
}
