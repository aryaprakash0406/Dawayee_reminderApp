import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/google_sign_in.dart';
import '../utils/app_colors.dart';
import '../widget/signInbuttonWidget.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(gradient: AppColors.colorPrimary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 5,
                ),
                const Image(image: AssetImage('assets/images/Logo_white.png')),
                const Image(
                    image: AssetImage('assets/images/D A W A Y E E.png')),
                SizedBox(
                  height: size.height / 20,
                ),
                Container(
                  width: size.width / 1.2,
                  alignment: Alignment.center,
                  child: const Text(
                    " ''You only live once, but if you do it right once is enough.''",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Monteserrat'),
                  ),
                ),
                SizedBox(
                  height: size.height / 5,
                ),
                SignInButtonWidget(
                  trailingIcon: 'assets/images/bar.png',
                  width: size.width / 1.2,
                  onPressed: (() {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogIn();
                  }),
                  borderRadius: BorderRadius.circular(15),
                  gradient: AppColors.colorSecondary, buttonName: 'SignUp/SignIn  with Google', 
                )
              ],
            ),
          ),
        ));
  }
}
