import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';
import 'package:internship_second_task/Presentation/CommonWidgets/CommonButton.dart';
import 'package:internship_second_task/Presentation/Elements/CustomButton.dart';
import 'package:internship_second_task/Presentation/Elements/CustomContainer.dart';
import '../../Configuration/AppColors.dart';
import '../Elements/CustomText.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyContainer(
            alignment: Alignment.centerLeft,
            height: 250,
            color: Colors.white70,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "Dokan",
                  size: 50,
                  fontWeight: FontWeight.bold,
                  color: AppColors.backgroundColor,
                  letterSpacing: 1,
                ),
                MyText(
                  text: "Retailer App",
                  size: 25,
                  color: AppColors.textColor,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Welcome To Dokhan!",
                  size: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
                SizedBox(height: 20),
                buildRowWidget(
                  "assets/icons/onBoardingIcon1.png",
                  "We Make Shopping for you business easier then ever before",
                ),
                buildRowWidget(
                  "assets/icons/onBoardingIcon2.png",
                  "Our app offers extensive product listings",
                ),
                buildRowWidget(
                  "assets/icons/onBoardingIcon3.png",
                  "Our ordering system is user-friendly",
                ),
                buildRowWidget(
                  "assets/icons/onBoardingIcon4.png",
                  "Find everything you need to keep your business running smoothly",
                ),
                buildRowWidget(
                  "assets/icons/onBoardingIcon5.png",
                  "Start shopping now and experience the convenience",
                ),
                SizedBox(height: 50),
                MyButton(
                  height: 55,
                  btnLabel: "Create Account",
                  textColor: AppColors.whiteRelatedColor,
                  fontWeight: FontWeight.w500,
                  color: AppColors.backgroundColor,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.signUp);
                  },
                ),
                SizedBox(height: 10),
                CommonTextButton(onTap: (){Navigator.pushNamed(context, AppRoutes.login);}, secondText: "Login",)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildRowWidget(String icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(icon, height: 30, width: 30, fit: BoxFit.contain),
          const SizedBox(width: 8),
          Expanded(
            child: MyText(text: text, size: 15, color: AppColors.greyTypeColor),
          ),
        ],
      ),
    );
  }
}
