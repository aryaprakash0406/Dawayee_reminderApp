import 'package:dawayee/utils/app_colors.dart';
import 'package:dawayee/widget/signInbuttonWidget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.colorPrimary),
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/Logo.png')),
            const Image(image: AssetImage('assets/images/D A W A Y E E.png')),
            const Text(
                " You only live once, but if you do it right once is enough."),
            SignInButtonWidget(
              onPressed: (){},
              child: Text("Sign In with GOOGLE"),
              borderRadius: BorderRadius.circular(20),
            )
          ],
        ),
      ),
    );
  }
}
