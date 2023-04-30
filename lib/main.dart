import 'dart:developer';
import 'package:dawayee/provider/google_sign_in.dart';
import 'package:dawayee/screens/add_medicine_page.dart';
import 'package:dawayee/screens/landing_page.dart';
import 'package:dawayee/screens/signup_page.dart';
import 'package:dawayee/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => GoogleSignInProvider(),
        child: MaterialApp(
          home:LandingPage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
