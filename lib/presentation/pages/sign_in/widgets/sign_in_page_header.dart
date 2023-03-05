import 'package:flutter/material.dart';

class SignInPageHeader extends StatelessWidget {
  const SignInPageHeader({
    super.key,
    this.canGoBack = false,
    this.onPressedBackButton,
  });

  final bool canGoBack;
  final void Function()? onPressedBackButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: (canGoBack)
              ? Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(
                    onPressed: onPressedBackButton!,
                  ),
                )
              : null,
        ),
        const Hero(
          tag: 'logo',
          child: FlutterLogo(
            size: 240,
          ),
        ),
        const SizedBox(height: 60),
        Text(
          'Sign In',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
