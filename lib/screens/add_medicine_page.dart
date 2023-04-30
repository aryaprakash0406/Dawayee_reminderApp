import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dawayee/widget/add_medicine_widget.dart';
import 'package:dawayee/widget/signInbuttonWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../user_model.dart';
import '../utils/app_colors.dart';

class AddMedicinePage extends StatefulWidget {
  const AddMedicinePage({super.key});

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  FirebaseFirestore db = FirebaseFirestore.instance;

  final List<Fields> _fields = [Fields()];

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser !;
    var firestore = FirebaseFirestore.instance;
    var medicines = firestore.collection("medicines");
    // String uid = user.uid;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [Text('Add Medicines')],
        ),
        actions: [
          GestureDetector(
            child: const Image(
                image: AssetImage('assets/images/bar.png')),
            onTap: () {
              for (var i = 0; i < _fields.length; i++) {
                final user = <String, dynamic>{
                  "medicine_name": _fields,
                  "medicine_type": "Mathison",
                  "when_to_eat": "Turing",
                  "time_to_eat": 1912
                };
                db.collection('uid').add(user).then((DocumentReference doc) =>
                    print('DocumentSnapshot added with ID: ${doc.id}'));
              }
            },
          )
        ],
        leading: const Image(image: AssetImage('assets/images/bar.png')),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: AppColors.colorBackground),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _fields.length,
                itemBuilder: (BuildContext context, int index) {
                  return AddMedicineWidget(
                      fields: _fields[index],
                      medicineName: 'medicineName',
                      medicineType: 'medicineType',
                      timeToEat: 'timeToEat',
                      whenToEat: 'whenToEat');
                },
              ),
            ),
            SignInButtonWidget(
              trailingIcon: 'assets/images/bar.png',
                onPressed: () {
                  setState(() {
                    _fields.add(Fields());
                  });
                },
                buttonName: 'add',),
            SignInButtonWidget(
              trailingIcon: 'assets/images/bar.png',
                onPressed: () {
                  setState(() {
                    if (_fields.length > 1) {
                      _fields.removeLast();
                    }
                  });
                },
                buttonName: 'remove',)
          ],
        ),
      ),
    );
  }
}
