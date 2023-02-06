import 'package:dawayee/utils/app_colors.dart';
import 'package:dawayee/widget/medicine_card_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        actions: const [Image(image: AssetImage('assets/images/Add_duotone_line.png'))],
        title: Column(
          children: [Text('Hii ${user.displayName?.split('')[0]}'), const Text("Burla,27\u2103")],
        ),
        leading: const Image(image: AssetImage('assets/images/3bar.png')),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: AppColors.colorBackground),
        ),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MedicineCardWidget(
                  catagory: 'catagory',
                  pillImage: AssetImage('assets/images/pill1.png'),
                  medicineName: 'medicineName',
                  timing: 'timing',
                  toeat: 'toeat',
                  whenToEat: 'whenToEat'),
            ),
            SizedBox(
              height: 20,
            ), //Si
          ],
        ),
      ),
    );
  }
}
