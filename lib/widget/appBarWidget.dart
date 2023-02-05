import 'package:dawayee/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final String title;
  final String semiTitle;
  final Gradient? gradient;
  final double? height;
  final double? weidth;
  final Image leadingImage;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.leadingIcon,
    this.trailingIcon,
    required this.semiTitle,
    this.gradient = AppColors.colorBackground,
    this.height,
    this.weidth,
    required this.leadingImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      title: Column(
        children: [Text(title), Text(semiTitle)],
      ),
      leading: Icon(leadingIcon),
      actions: [Icon(trailingIcon)],
    );
  }
}
