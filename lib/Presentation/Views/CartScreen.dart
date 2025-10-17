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
        title: MyText(text: "Cart", size: 22, fontWeight: FontWeight.bold,),
        centerTitle: true,
        backgroundColor: AppColors.whiteRelatedColor,
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index){
        return ListTile(
          leading: Image.asset("assets/images/rice.png"),
          title: Text("data"),
          subtitle: Text("data"),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyContainer(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if(stock == 0 && stock <= 0){
                            stock = 0;
                          }else{
                            stock--;
                          }
                        });
                      },
                      icon: MyIconContainer(
                        height: 20,
                        width: 25,
                        iconData: Icons.minimize,
                        iconHeight: 15,
                        color: AppColors.secondaryBackgroundColor,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    MyText(text: stock.toString(), size: 25),
                    const SizedBox(width: 5,),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          stock++;
                        });
                      },
                      icon: MyIconContainer(
                        height: 20,
                        width: 25,
                        iconData: Icons.add,
                        iconHeight: 15,
                        iconColor: AppColors.secondaryBackgroundColor,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
