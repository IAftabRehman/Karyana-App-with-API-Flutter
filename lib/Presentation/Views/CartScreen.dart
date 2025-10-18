import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
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
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  MyText(text: "Delete"),
                  const Icon(Icons.delete, color: Colors.white, size: 30),
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
              });

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Item deleted")));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyContainer(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.secondaryBackgroundColor,
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/wheat.png",
                    height: 80,
                    width: 70,
                    fit: BoxFit.contain,
                  ),
                  title: MyText(
                    text: "Wheat Grain Bag",
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "x 10Kg",
                        size: 14,
                        color: AppColors.textColor.withOpacity(0.4),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          MyText(
                            text: "1200 Rs",
                            size: 16,
                            color: AppColors.backgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(width: 5),
                          MyText(
                            text: "x 10Kg",
                            size: 14,
                            color: AppColors.textColor.withOpacity(0.4),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
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
                              iconData: Icons.minimize,
                              iconHeight: 15,
                              color: AppColors.secondaryBackgroundColor,
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
                              iconColor: AppColors.secondaryBackgroundColor,
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
