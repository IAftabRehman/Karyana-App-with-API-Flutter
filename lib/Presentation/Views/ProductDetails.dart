import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

import '../Elements/CustomButton.dart';
import '../Elements/CustomContainer.dart';

class ProductDetails extends StatefulWidget {
  final String image;
  final String name;

  const ProductDetails({super.key, required this.name, required this.image});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isExpanded = false;
  int stock = 0;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyContainer(
            height: h * 0.3,
            width: double.infinity,
            color: AppColors.secondaryBackgroundColor,
            padding: EdgeInsets.all(20),
            child: Image.asset(widget.image, fit: BoxFit.contain),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyText(
              text: widget.name,
              fontWeight: FontWeight.bold,
              size: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyText(
              text: widget.name,
              fontWeight: FontWeight.bold,
              color: AppColors.greyTypeColor,
              size: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  text: "1200 RS",
                  fontWeight: FontWeight.bold,
                  color: AppColors.orangeTypeColor,
                  size: 17,
                ),
                const SizedBox(width: 10),
                MyText(
                  text: "1600 RS",
                  color: AppColors.textColor,
                  decoration: TextDecoration.lineThrough,
                  size: 14,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyText(
              text: "Description",
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
              size: 21,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text:
                      "This is the description of the product, This is the description of the product, This is the description of the product, This is the description of the product, ",
                  color: AppColors.greyTypeColor,
                  size: 16,
                  fontWeight: FontWeight.bold,
                  maxLines: isExpanded ? null : 2,
                  textOverflow: isExpanded
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: MyText(
                    text: isExpanded ? "Read less" : "Read more",
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyContainer(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          height: 30,
                          width: 35,
                          iconData: Icons.minimize,
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
                          height: 30,
                          width: 35,
                          iconData: Icons.add,
                          iconColor: AppColors.secondaryBackgroundColor,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 120),
                Expanded(
                  child: MyButton(
                    color: const Color(0xff121212),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    onPressed: () {

                    },
                    child: MyText(
                      text: "Add To Cart",
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
