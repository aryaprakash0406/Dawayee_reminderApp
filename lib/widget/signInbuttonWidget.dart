import 'package:dawayee/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SignInButtonWidget extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final String buttonName;
  final String? trailingIcon;

  const SignInButtonWidget({
    Key? key,
    required this.onPressed,
    required this.buttonName,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = AppColors.colorSecondary,
    this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(trailingIcon!)),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
            ),
            child: Text(
              buttonName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Monteserrat',
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
