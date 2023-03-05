import 'package:flutter/material.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';
import 'package:voice_club_clone/presentation/pages/account/widgets/account_list_tile.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

class AccountPageReady extends StatelessWidget {
  const AccountPageReady({
    super.key,
    required this.appUser,
    required this.signOut,
  });

  final AppUser appUser;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.sasquatchSocks,
                          AppColors.royalOrange,
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 200),
                  Column(
                    children: [
                      const AccountListTile(
                        title: 'Privacy Policy',
                        icon: Icons.privacy_tip_outlined,
                      ),
                      const AccountListTile(
                        title: 'Share App',
                        icon: Icons.share,
                      ),
                      const AccountListTile(
                        title: 'Delete Account',
                        icon: Icons.delete_forever_outlined,
                      ),
                      const AccountListTile(
                        title: 'Email Support',
                        subtitle: 'help@voiceclub.app',
                        icon: Icons.headset_mic_outlined,
                      ),
                      AccountListTile(
                        title: 'Sign Out',
                        icon: Icons.logout,
                        onTap: signOut,
                      ),
                    ],
                  )
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 120,
                      left: 20,
                      right: 20,
                    ),
                    child: Material(
                      type: MaterialType.card,
                      borderRadius: BorderRadius.circular(16),
                      elevation: 5,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 200,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 48),
                            Text(
                              appUser.name,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Phone no.: ${appUser.phone}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColors.gray),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Center(
                      child: Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.royalOrange,
                        ),
                        child: Center(
                          child: Text(
                            appUser.name[0],
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
