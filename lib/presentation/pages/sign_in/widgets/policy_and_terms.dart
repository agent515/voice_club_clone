import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

class PolicyAndTerms extends StatelessWidget {
  const PolicyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By entering number you are agreeing to our ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: 'Policy',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.sasquatchSocks),
          ),
          TextSpan(
            text: ' & ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: 'Terms',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.sasquatchSocks),
          )
        ],
      ),
    );
  }
}
