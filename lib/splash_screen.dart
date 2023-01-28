import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(77, 105, 220, 100),
          Color.fromRGBO(28, 54, 161, 100)
        ], begin: Alignment.topLeft, end: Alignment.topRight),
      ),
      child: Center(
        child: Image(
          image: AssetImage('assets/images/Logo.png'),
          width: 200.0,
          height: 200.0,
        ),
      ),
    );
  }
}
