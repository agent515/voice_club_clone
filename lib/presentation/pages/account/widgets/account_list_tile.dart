import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.icon,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.chineseBlack,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: Theme.of(context).textTheme.bodySmall,
            )
          : null,
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.chineseBlack,
      ),
      onTap: onTap,
    );
  }
}
