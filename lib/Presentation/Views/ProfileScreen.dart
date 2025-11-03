import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';
import '../../Configuration/AppColors.dart';
import '../Elements/CustomContainer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteRelatedColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryBackgroundColor,
        automaticallyImplyLeading: false,
        title: MyText(text: "Profile", fontWeight: FontWeight.bold, size: 21),
        actions: [
          MyIconContainer(iconData: Icons.more_vert_outlined, iconHeight: 30),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 120),
          child: MyContainer(
            padding: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            child: MyContainer(
              height: 100,
              width: double.infinity,
              color: AppColors.whiteRelatedColor,
              borderRadius: BorderRadius.circular(10),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Image.asset(
                      "assets/images/corn.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Muhammad Wajahat",
                        size: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      MyText(
                        text: "mwajahat.038@gmail.com",
                        size: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.backgroundColor,
                      ),
                      MyText(
                        text: "+44 647886434",
                        size: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: MyIconContainer(
                      iconData: Icons.edit_square,
                      iconColor: AppColors.backgroundColor,
                      iconHeight: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          children: [
            buildContainer("Account Settings", () => Navigator.pushNamed(context, AppRoutes.accountSetting), null),
            buildContainer("Terms & Conditions", () => Navigator.pushNamed(context, AppRoutes.billReceipt), null),
            buildContainer("Privacy Policy", (){}, null),
            buildContainer("Help & Support", (){}, null),
            buildContainer("Rate Our App", (){}, null),
            buildContainer("Logout", (){}, AppColors.backgroundColor),
          ],
        ),
      ),
    );
  }

  MyContainer buildContainer(String text, GestureTapCallback onTap, Color? textColor) {
    return MyContainer(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      color: AppColors.secondaryBackgroundColor,
      borderRadius: BorderRadius.circular(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(text: text, size: 16, color: textColor ?? Colors.black, fontWeight: FontWeight.w500,),
          MyIconContainer(
            iconHeight: 20,
            iconData: Icons.arrow_forward_ios_rounded,
            iconColor: AppColors.greyTypeColor,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
