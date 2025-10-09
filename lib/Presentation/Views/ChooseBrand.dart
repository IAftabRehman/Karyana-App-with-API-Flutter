import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Models/BrandModel.dart';
import 'package:internship_second_task/Presentation/Elements/CustomButton.dart';
import 'package:internship_second_task/Presentation/Elements/CustomContainer.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';

class ChooseBrand extends StatefulWidget {
  final String image;
  final String name;

  const ChooseBrand({super.key, required this.image, required this.name});

  @override
  State<ChooseBrand> createState() => _ChooseBrandState();
}

class _ChooseBrandState extends State<ChooseBrand> {

  List<BrandModel> brandModel = [
    BrandModel(name: "Brand", image: "assets/images/brand1.png", isClick: false),
    BrandModel(name: "Neon", image: "assets/images/brand2.png", isClick: false),
    BrandModel(name: "Brand", image: "assets/images/brand3.png", isClick: false),
    BrandModel(name: "Brand", image: "assets/images/brand4.png", isClick: false),
    BrandModel(name: "Brand", image: "assets/images/brand5.png", isClick: false),
    BrandModel(name: "Brand", image: "assets/images/brand1.png", isClick: false),
    BrandModel(name: "Brand", image: "assets/images/brand2.png", isClick: false),
    BrandModel(name: "Brand", image: "assets/images/brand3.png", isClick: false),
  ];
  String showBrand = "Brand";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    widget.image,
                    height: 40,
                    width: 45,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 10),
                  MyText(
                    text: widget.name,
                    size: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),

              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),

              MyContainer(
                height: 150,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Text(
                        "Recommended for you",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    Expanded(
                      child: ListView.builder(
                        itemCount: brandModel.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                for (var b in brandModel) {
                                  b.isClick = false;
                                }
                                brandModel[index].isClick = true;
                                showBrand = brandModel[index].name;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Column(
                                children: [
                                  MyContainer(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: brandModel[index].isClick ? AppColors.orangeTypeColor.withOpacity(0.24): AppColors.secondaryBackgroundColor,
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(
                                      brandModel[index].image,
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  MyText(
                                    text: brandModel[index].name,
                                    color: brandModel[index].isClick ? AppColors.orangeTypeColor: AppColors.textColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              MyContainer(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Text(
                        showBrand,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),

                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3 / 5,
                          ),
                      itemCount: 4,
                      itemBuilder: (context, index) => MyContainer(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.secondaryBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                widget.image,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(height: 10),
                              MyContainer(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: "Wheat Grain Bag",
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            MyText(
                                              text: "1200 Rs",
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.orangeTypeColor,
                                            ),
                                            MyText(
                                              text: "1600 Rs",
                                              size: 12,
                                              decoration: TextDecoration.lineThrough,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.primaryBackgroundColor,
                                            ),
                                          ],
                                        ),

                                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline, color: AppColors.primaryBackgroundColor))
                                      ],
                                    )

                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              MyButton(
                                color: const Color(0xff121212),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                onPressed: () {},
                                child: MyText(
                                  text: "Buy Now",
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
