import 'package:dawayee/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MedicineCardWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String medicineName;
  final String catagory;
  final String toeat;
  final String whenToEat;
  final String timing;
  // final Gradient gradient;
  // final VoidCallback? onPressed;
  // final Widget child;
  final ImageProvider pillImage;

  const MedicineCardWidget({
    Key? key,
    this.height,
    this.width,
    required this.catagory,
    // required this.child,
    // this.gradient = AppColors.colorBackground,
    required this.pillImage,
    required this.medicineName,
    // required this.onPressed,
    required this.timing,
    required this.toeat,
    required this.whenToEat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Image(
          //     image: pillImage,
          //   ),
          // ),
          // const SizedBox(
          //   width: 20,
          // ),
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Column(
          //     children: [
          //       Text(medicineName),
          //       Text(catagory),
          //     ],
          //   ),
          // ),
          // const VerticalDivider(
          //   color: Colors.black,
          //   thickness: 1,
          // ),
          // const SizedBox(
          //   width: 20,
          // ),
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Column(
          //     children: [Text(timing), Text(toeat), Text(whenToEat)],
          //   ),
          // ),
           Image(
               image: pillImage,
             ),
             const SizedBox(
             width: 20,
             ),
             Column(
               children: [
                 Text(medicineName),
                 Text(catagory),
               ],
             ),
             const VerticalDivider(
             color: Colors.black,
             thickness: 1,
           ),
           Column(
               children: [Text(timing), Text(toeat), Text(whenToEat)],
             ),
        ],
      ),
    );
  }
}
