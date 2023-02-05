import 'package:dawayee/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.colorPrimary),
      child: Center(
        child: Image(
          image: const AssetImage('assets/images/Logo.png'),
          width: size.width / 2,
          height: size.width / 2,
        ),
      ),
    );
  }
}

