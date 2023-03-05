import 'package:flutter/material.dart';

class MyRoundedActionButton extends StatelessWidget {
  const MyRoundedActionButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          shape: MaterialStatePropertyAll(
            StadiumBorder(),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
