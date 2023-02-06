import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/google_sign_in.dart';
import '../utils/app_colors.dart';
import 'signInbuttonWidget.dart';
class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

 @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: Scaffold(
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
                onPressed: (() {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogIn();
                }),
                child: Text("Sign In with GOOGLE"),
                borderRadius: BorderRadius.circular(20),
              )
            ],
          ),
        ),
      ));
}