import 'package:flutter/material.dart';
import '../../Configuration/AppColors.dart';
import '../Elements/CustomButton.dart';
import '../Elements/CustomText.dart';

class CommonTextButton extends StatelessWidget {
  final String? firstText;
  final String secondText;
  final GestureTapCallback onTap;
  const CommonTextButton({super.key, required this.onTap, this.firstText,required this.secondText});

  @override
  Widget build(BuildContext context) {
    return MyButton(
      height: 55,
      textColor: AppColors.whiteRelatedColor,
      fontWeight: FontWeight.w500,
      color: Colors.transparent,
      border: Border.all(color: AppColors.greyTypeColor),
      onPressed: onTap,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: firstText ?? "Have an account?",
              color: AppColors.greyTypeColor,
              size: 15,
            ),
            MyText(
              text: secondText,
              fontWeight: FontWeight.bold,
              color: AppColors.backgroundColor,
              size: 17,
            ),
          ],
        ),
      ),
    );
  }
}
