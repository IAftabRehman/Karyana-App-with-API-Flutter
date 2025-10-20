import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';
import 'package:internship_second_task/Presentation/Elements/CustomButton.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

import '../Elements/CustomContainer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int stock = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteRelatedColor,
      appBar: AppBar(
        leading: SizedBox(),
        title: MyText(text: "Cart", size: 22, fontWeight: FontWeight.bold),
        centerTitle: true,
        backgroundColor: AppColors.whiteRelatedColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(index.toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFA8072),
                          Color(0xffFA8072),
                          Color(0xffFA8072),
                          Colors.redAccent,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.delete,
                          color: AppColors.whiteRelatedColor,
                          size: 30,
                        ),
                        const SizedBox(width: 5),
                        MyText(
                          text: "Delete",
                          size: 17,
                          color: AppColors.whiteRelatedColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {});

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Item deleted")),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: MyContainer(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.secondaryBackgroundColor,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/wheat.png",
                            height: 80,
                            width: 70,
                            fit: BoxFit.contain,
                          ),

                          const SizedBox(width: 5),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Wheat Grain Bag",
                                size: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              MyText(
                                text: "x 10Kg",
                                size: 12,
                                color: AppColors.textColor.withOpacity(0.4),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  MyText(
                                    text: "1200 Rs",
                                    size: 14,
                                    color: AppColors.backgroundColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  const SizedBox(width: 5),
                                  MyText(
                                    text: "1600 Rs",
                                    size: 11,
                                    decoration: TextDecoration.lineThrough,
                                    color: AppColors.textColor.withOpacity(0.4),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const Spacer(),

                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (stock <= 0) {
                                          stock = 0;
                                        } else {
                                          stock--;
                                        }
                                      });
                                    },
                                    icon: MyIconContainer(
                                      height: 25,
                                      width: 25,
                                      iconData: Icons.remove,
                                      iconHeight: 15,
                                      iconColor: AppColors.textColor,
                                      color: AppColors.whiteRelatedColor,
                                    ),
                                  ),
                                  MyText(text: stock.toString(), size: 20),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        stock++;
                                      });
                                    },
                                    icon: MyIconContainer(
                                      height: 25,
                                      width: 25,
                                      iconData: Icons.add,
                                      iconHeight: 15,
                                      iconColor:
                                          AppColors.secondaryBackgroundColor,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          MyContainer(
            height: 80,
            color: Colors.transparent,
            border: Border.all(
              width: 0.5,
              color: AppColors.secondaryBackgroundColor,
            ),
            child: ListTile(
              title: MyText(
                text: "Total",
                color: AppColors.greyTypeColor,
                fontWeight: FontWeight.w500,
              ),
              subtitle: MyText(
                text: "7200 Rs",
                color: AppColors.backgroundColor,
                fontWeight: FontWeight.bold,
                size: 20,
              ),
              trailing: MyButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.checkOut);
                },
                btnLabel: "Buy Now",
                width: 100,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
