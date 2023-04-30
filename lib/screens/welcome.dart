import 'package:dawayee/provider/google_sign_in.dart';
import 'package:dawayee/screens/landing_page.dart';
import 'package:dawayee/utils/app_colors.dart';
import 'package:dawayee/widget/signInbuttonWidget.dart';
import 'package:dawayee/screens/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return  LandingPage();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('something went wrong'),
              );
            } else {
              return const SignUpWidget();
            }
          }));
}
