import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

import '../Elements/CustomContainer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteRelatedColor,
      appBar: AppBar(
        title: MyText(
          text: "Notifications",
          size: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: MyContainer(
              color: AppColors.secondaryBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/icons/discount.png"),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Flash Sale Alert!",
                          size: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        MyText(
                          text:
                          "Don't miss out on our one-day only flash sale! Get 20% off all Products.",
                          size: 13,
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyTypeColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  
                  MyText(text: "1 Day Ago", size: 13, fontWeight: FontWeight.bold, color: AppColors.greyTypeColor)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
