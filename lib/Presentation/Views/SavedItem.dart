import 'package:flutter/material.dart';
import '../../Configuration/AppColors.dart';
import '../../Configuration/AppRoutes.dart';
import '../../Models/BrandModel.dart';
import '../Elements/CustomButton.dart';
import '../Elements/CustomContainer.dart';
import '../Elements/CustomText.dart';

class SavedItem extends StatefulWidget {
  const SavedItem({super.key});

  @override
  State<SavedItem> createState() => _SavedItemState();
}

class _SavedItemState extends State<SavedItem> {
  List<BrandModel> brandModel = [
    BrandModel(
      name: "Brand",
      image: "assets/images/brand1.png",
      isClick: false,
    ),
    BrandModel(name: "Neon", image: "assets/images/brand2.png", isClick: false),
    BrandModel(
      name: "Brand",
      image: "assets/images/brand3.png",
      isClick: false,
    ),
    BrandModel(
      name: "Brand",
      image: "assets/images/brand4.png",
      isClick: false,
    ),
    BrandModel(
      name: "Brand",
      image: "assets/images/brand5.png",
      isClick: false,
    ),
    BrandModel(
      name: "Brand",
      image: "assets/images/brand1.png",
      isClick: false,
    ),
    BrandModel(
      name: "Brand",
      image: "assets/images/brand2.png",
      isClick: false,
    ),
    BrandModel(
      name: "Brand",
      image: "assets/images/brand3.png",
      isClick: false,
    ),
  ];
  String showBrand = "Brand";
  String actualPrice = "1200";
  String discount = "1600";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteRelatedColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title
                  MyText(
                    text: "Saved Items",
                    size: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                  ),
                  const SizedBox(height: 15),

                  // Search Field
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBackgroundColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search product",
                        hintStyle: TextStyle(
                          color: AppColors.greyTypeColor,
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 30,
                          color: AppColors.greyTypeColor,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row(
              //   children: [
              //     Image.asset(
              //       brandModel.image,
              //       height: 40,
              //       width: 45,
              //       fit: BoxFit.contain,
              //     ),
              //     const SizedBox(width: 10),
              //     MyText(
              //       text: brandModel.name,
              //       size: 22,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ],
              // ),

              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),

              MyContainer(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                brandModel[index].image,
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
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: "Wheat Grain Bag",
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            MyText(
                                              text: "1200 Rs",
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.orangeTypeColor,
                                            ),
                                            MyText(
                                              text: "1600 Rs",
                                              size: 12,
                                              decoration:
                                              TextDecoration.lineThrough,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors
                                                  .primaryBackgroundColor,
                                            ),
                                          ],
                                        ),

                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: AppColors.redRelatedColor.withOpacity(0.2),
                                              size: 30,
                                            ),
                                            Icon(
                                              Icons.favorite_outline,
                                              color: AppColors.redRelatedColor,
                                              size: 30,
                                            ),
                                          ],
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              MyButton(
                                color: const Color(0xff121212),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context,
                                      AppRoutes.productDetails,
                                      arguments: {
                                        "image": brandModel[index].image,
                                        "name": brandModel[index].name,
                                      }
                                  );
                                },
                                child: MyText(
                                  text: "Buy Now",
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.normal,
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
