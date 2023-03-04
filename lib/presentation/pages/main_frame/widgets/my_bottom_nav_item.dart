import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

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
