import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/pages/home/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
