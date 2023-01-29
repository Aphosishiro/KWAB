import 'package:flutter/material.dart';
import 'package:kwab/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(const Kwab());
}

class Kwab extends StatelessWidget {
  const Kwab({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
