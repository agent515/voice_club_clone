import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('VoiceClub'),
      actions: [
        Row(
          children: [
            Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightGray,
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_outlined,
                  color: AppColors.chineseBlack,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 28,
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.sasquatchSocks,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  '₹0.00',
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.7,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            )
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
