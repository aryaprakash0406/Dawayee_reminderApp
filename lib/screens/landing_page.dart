import 'package:dawayee/utils/app_colors.dart';
import 'package:dawayee/widget/medicine_card_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColors.colorTertiary,
        actions: const [
          Image(image: AssetImage('assets/images/Add_duotone_line.png'))
        ],
        title: Column(
          children: [
            // Text('Hii ${user.displayName?.split('')[0]}'),
            const Text("Burla,27\u2103")
          ],
        ),
        leading: GestureDetector(
            child: const Image(image: AssetImage('assets/images/bar.png')),
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            }),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: AppColors.colorBackground),
        ),
      ),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            _scaffoldKey.currentState?.openDrawer();
          }
        },
        child: Center(
          child: Column(
            children: const <Widget>[
              
               MedicineCardWidget(
                    catagory: 'catagory',
                    pillImage: AssetImage('assets/images/pill.png'),
                    medicineName: 'medicineName',
                    timing: 'timing',
                    toeat: 'toeat',
                    whenToEat: 'whenToEat'),
              
              SizedBox(
                height: 20,
              ), //Si
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.colorTertiary,
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Drawer Item 1"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Drawer Item 2"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
