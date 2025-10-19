import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Presentation/Elements/CustomContainer.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryBackgroundColor,
        leading: SizedBox(),
        actions: [
          MyIconContainer(
            iconData: Icons.close,
            iconHeight: 30,
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Animate(
              effects: const [
                FadeEffect(duration: Duration(milliseconds: 2000)),
                MoveEffect(curve: Curves.fastLinearToSlowEaseIn),
              ],
              child: Center(
                child: Image.asset('assets/icons/delivery-truck.png'),
              ),
            ),

            const SizedBox(height: 8),
            MyText(
              text: "Your Order Has Been Placed Successfully",
              size: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            MyText(
              text:
                  "Your order has been successfully placed and is on its way to being delivered. We appreciate your business and are excited to fulfill your purchase.",
              size: 15,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            MyContainer(
              width: double.infinity,
              color: AppColors.whiteRelatedColor,
              borderRadius: BorderRadius.circular(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Order Details",
                    size: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const Divider(),
                  const SizedBox(height: 10),
                  buildSizedBox("Order ID", "#KR21241"),
                  const SizedBox(height: 10),
                  buildSizedBox("Number of Items", "3"),
                  const SizedBox(height: 10),
                  buildSizedBox(
                    "Delivery Address",
                    "SD-21, North Nazimabad, Karachi",
                  ),
                  const SizedBox(height: 10),
                  buildSizedBox("Expected Delivery", "Monday, 14 April"),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: "Total",
                        size: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      MyText(
                        text: "7400 Rs",
                        size: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.backgroundColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.whiteRelatedColor,
          border: Border.all(
            width: 1,
            color: AppColors.secondaryBackgroundColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildElevatedButton("Home", Colors.black, (){}),
            buildElevatedButton("View Order", AppColors.backgroundColor, (){}),
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(String text1, String text2) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(text: text1, size: 12.5, color: AppColors.greyTypeColor),
          MyText(text: text2, size: 17),
        ],
      ),
    );
  }

  ElevatedButton buildElevatedButton(String label, Color color, GestureTapCallback onTap) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: color,
          minimumSize: Size(10, 50)
      ),
      child: MyText(text: label, size: 16, fontWeight: FontWeight.bold, color: AppColors.whiteRelatedColor),
    );
  }

}
