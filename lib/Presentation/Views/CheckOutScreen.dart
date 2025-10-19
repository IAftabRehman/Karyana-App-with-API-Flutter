import 'package:flutter/material.dart';
import 'package:internship_second_task/Presentation/Elements/CustomContainer.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

import '../../Configuration/AppColors.dart';
import '../../Configuration/AppRoutes.dart';
import '../Elements/CustomButton.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 15),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 MyText(text: "Checkout", size: 25, fontWeight: FontWeight.bold),
      //                 MyIconContainer(iconData: Icons.more_vert_outlined),
      //               ],
      //             ),
      //
      //             const SizedBox(height: 10),
      //             const Divider(),
      //             const SizedBox(height: 10),
      //
      //             MyText(
      //               text: "Delivery Address",
      //               size: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             const SizedBox(height: 5),
      //             Padding(
      //               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //               child: MyContainer(
      //                 borderRadius: BorderRadius.circular(10),
      //                 width: double.infinity,
      //                 color: AppColors.secondaryBackgroundColor,
      //                 padding: EdgeInsets.all(10),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     MyText(
      //                       text: "SD-21, North Nazimabad, Karachi",
      //                       fontWeight: FontWeight.w500,
      //                       size: 18,
      //                     ),
      //                     const SizedBox(height: 5),
      //                     MyText(
      //                       text: "Muhammad Wajahat",
      //                       color: AppColors.greyTypeColor,
      //                       size: 16,
      //                     ),
      //                     const SizedBox(height: 3),
      //                     MyText(
      //                       size: 16,
      //                       text: "+92321-6646491",
      //                       color: AppColors.greyTypeColor,
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //
      //             const SizedBox(height: 20),
      //             MyText(text: "Items", size: 20, fontWeight: FontWeight.bold),
      //             ListView.builder(
      //                 itemCount: 3,
      //                 itemBuilder: (context, index){
      //               return Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //                 child: MyContainer(
      //                   borderRadius: BorderRadius.circular(10),
      //                   color: AppColors.secondaryBackgroundColor,
      //                   child: ListTile(
      //                     leading: Image.asset(
      //                       "assets/images/wheat.png",
      //                       height: 80,
      //                       width: 60,
      //                       fit: BoxFit.contain,
      //                     ),
      //                     title: MyText(
      //                       text: "Wheat Grain Bag",
      //                       size: 15,
      //                       fontWeight: FontWeight.w600,
      //                     ),
      //                     subtitle: Column(
      //                       mainAxisAlignment: MainAxisAlignment.start,
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         MyText(
      //                           text: "x 10Kg",
      //                           size: 13,
      //                           color: AppColors.textColor.withOpacity(0.4),
      //                         ),
      //                         const SizedBox(height: 5),
      //                         Row(
      //                           children: [
      //                             MyText(
      //                               text: "1200 Rs",
      //                               size: 15,
      //                               color: AppColors.backgroundColor,
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                             const SizedBox(width: 5),
      //                             MyText(
      //                               text: "1600 Rs",
      //                               size: 12,
      //                               decoration: TextDecoration.lineThrough,
      //                               color: AppColors.textColor.withOpacity(0.4),
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                     trailing: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.end,
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         MyText(text: "Quantity", size: 14, color: AppColors.greyTypeColor,),
      //                         MyText(text: "03", size: 15),
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               );
      //             }),
      //             MyText(
      //               text: "Sales Person",
      //               size: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             const SizedBox(height: 5),MyText(
      //               text: "Sales Person",
      //               size: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             const SizedBox(height: 5),MyText(
      //               text: "Sales Person",
      //               size: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             const SizedBox(height: 5),MyText(
      //               text: "Sales Person",
      //               size: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             const SizedBox(height: 5),MyText(
      //               text: "Sales Person",
      //               size: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             const SizedBox(height: 5),
      //           ],
      //         ),
      //       ),
      //
      //       MyContainer(
      //         height: 100,
      //         width: double.infinity,
      //         color: Colors.red,
      //       )
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(text: "Checkout", size: 25, fontWeight: FontWeight.bold),
              MyIconContainer(iconData: Icons.more_vert_outlined),
            ],
          ),

              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),

              MyText(
                text: "Delivery Address",
                size: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                child: MyContainer(
                  borderRadius: BorderRadius.circular(10),
                  width: double.infinity,
                  color: AppColors.secondaryBackgroundColor,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "SD-21, North Nazimabad, Karachi",
                        fontWeight: FontWeight.w500,
                        size: 18,
                      ),
                      const SizedBox(height: 5),
                      MyText(
                        text: "Muhammad Wajahat",
                        color: AppColors.greyTypeColor,
                        size: 16,
                      ),
                      const SizedBox(height: 3),
                      MyText(
                        size: 16,
                        text: "+92321-6646491",
                        color: AppColors.greyTypeColor,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              MyText(
                text: "Items",
                size: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),

              // List of items
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: MyContainer(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.secondaryBackgroundColor,
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/wheat.png",
                          height: 80,
                          width: 60,
                          fit: BoxFit.contain,
                        ),
                        title: MyText(
                          text: "Wheat Grain Bag",
                          size: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "x 10Kg",
                              size: 13,
                              color: AppColors.textColor.withOpacity(0.4),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                MyText(
                                  text: "1200 Rs",
                                  size: 15,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(width: 5),
                                MyText(
                                  text: "1600 Rs",
                                  size: 12,
                                  decoration: TextDecoration.lineThrough,
                                  color: AppColors.textColor.withOpacity(0.4),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              text: "Quantity",
                              size: 14,
                              color: AppColors.greyTypeColor,
                            ),
                            MyText(text: "03", size: 15),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),

              // Sales Person Section
              const SizedBox(height: 20),
              MyText(text: "Sales Person", size: 20, fontWeight: FontWeight.bold),
              MyText(text: "Muhammad Wajahat", size: 16),
              const SizedBox(height: 100), // space before bottom bar
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyContainer(
          height: 80,
          color: Colors.transparent,
          border: Border.all(width: 1, color: AppColors.secondaryBackgroundColor),
          child: ListTile(
            title: MyText(text: "Total", color: AppColors.greyTypeColor, fontWeight: FontWeight.w500,),
            subtitle: MyText(text: "7400 Rs", color: AppColors.backgroundColor, fontWeight: FontWeight.bold, size: 20,),
            trailing: MyButton(onPressed: (){
              Navigator.pushNamed(context, AppRoutes.placeOrder);
            }, btnLabel: "Place Order", width: 110, color: Colors.black, fontWeight: FontWeight.normal,),
          )
      )
    );

  }
}
