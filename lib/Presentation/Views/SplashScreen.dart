import 'package:flutter/material.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';
import '../../Configuration/AppColors.dart';
import '../../Configuration/AppRoutes.dart';
import '../Elements/CustomContainer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, AppRoutes.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: "Dokan",
              size: 50,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteRelatedColor,
              letterSpacing: 1,
            ),
            MyText(
              text: "Retailer App",
              size: 25,
              color: AppColors.whiteRelatedColor,
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyContainer(
        padding: EdgeInsets.all(20),
        child: MyText(
          text: "Sky Pulse Solution",
          size: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.whiteRelatedColor,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

