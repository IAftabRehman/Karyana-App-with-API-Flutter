import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Models/BrandModel.dart';
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
    BrandModel(name: "Brand", image: "assets/images/brand1.png"),
    BrandModel(name: "Neon", image: "assets/images/brand2.png"),
    BrandModel(name: "Brand", image: "assets/images/brand3.png"),
    BrandModel(name: "Brand", image: "assets/images/brand4.png"),
    BrandModel(name: "Brand", image: "assets/images/brand5.png"),
    BrandModel(name: "Brand", image: "assets/images/brand1.png"),
    BrandModel(name: "Brand", image: "assets/images/brand2.png"),
    BrandModel(name: "Brand", image: "assets/images/brand3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      body: Padding(
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
              color: Colors.red,
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
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              MyContainer(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.secondaryBackgroundColor,
                                ),
                                padding: EdgeInsets.all(5),
                                child: Image.asset(
                                  brandModel[index].image,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 5),
                              MyText(text: brandModel[index].name, fontWeight: FontWeight.bold),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
