import 'package:dawayee/user_model.dart';
import 'package:dawayee/utils/app_colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class AddMedicineWidget extends StatefulWidget {
  final String medicineName;
  final String medicineType;
  final String whenToEat;
  final String timeToEat;
  final Fields fields;
  const AddMedicineWidget({
    Key? key,
    required this.medicineName,
    required this.medicineType,
    required this.timeToEat,
    required this.whenToEat, 
    required this.fields,
  }) : super(key: key);

  @override
  State<AddMedicineWidget> createState() => _AddMedicineWidgetState();
}

class _AddMedicineWidgetState extends State<AddMedicineWidget> {
  String _selectedItem = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
              width: 300,
              child: TextField(
                controller: widget.fields.medicineNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name Here',
                  hintText: 'Enter Name Here',
                ),
                autofocus: false,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              child: TextField(
                controller: widget.fields.medicineTypeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Medicine Type',
                  hintText: 'Paracetamol',
                ),
                autofocus: false,
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  value: _selectedItem,
                  items: const ['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value!;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: AppColors.colorTertiary,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 50,
                  buttonWidth: 160,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.redAccent,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 200,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.redAccent,
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                  offset: const Offset(-20, 0),
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  value: _selectedItem,
                  items: const ['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value!;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: AppColors.colorTertiary,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 50,
                  buttonWidth: 160,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.redAccent,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 200,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.redAccent,
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                  offset: const Offset(-20, 0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
