import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';
import 'package:internship_second_task/Models/CategoriesModel.dart';
import 'package:internship_second_task/Presentation/Elements/CustomContainer.dart';
import 'package:internship_second_task/Presentation/Elements/CustomText.dart';
import 'package:internship_second_task/Presentation/Elements/CustomTextField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoriesModel> categories = [
    CategoriesModel(name: "Rice", image: "assets/images/rice.png"),
    CategoriesModel(name: "Wheat", image: "assets/images/wheat.png"),
    CategoriesModel(name: "Oats", image: "assets/images/oats.png"),
    CategoriesModel(name: "Barley", image: "assets/images/barley.png"),
    CategoriesModel(name: "Corn", image: "assets/images/corn.png"),
    CategoriesModel(name: "Wheat", image: "assets/images/wheat.png"),
    CategoriesModel(name: "Oats", image: "assets/images/oats.png"),
    CategoriesModel(name: "Barley", image: "assets/images/barley.png"),
    CategoriesModel(name: "Corn", image: "assets/images/corn.png"),
    CategoriesModel(name: null, image: "assets/images/corn.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('assets/icons/leadingIcon.png'),
        title: MyText(text: "Dokan", size: 30, fontFamily: 'Krona'),
        centerTitle: true,
        actions: [Image.asset("assets/icons/notificationIcon.png")],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/mainDashboard.png',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 10),

            Center(
              child: MyTextField(
                backgroundColor: AppColors.secondaryBackgroundColor,
                width: 350,
                icon: 'assets/icons/searchIcon.png',
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBackgroundColor,
                ),
                textFieldBorder: Border.all(width: 0),
              ),
            ),
            SizedBox(height: 15),

            GridView.builder(
              shrinkWrap: true,
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 20,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.chooseBrand,
                      arguments: {
                        "image": categories[index].image,
                        "name": categories[index].name ?? "Show All",
                      }
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyContainer(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.secondaryBackgroundColor,
                        ),
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Image.asset(
                            categories[index].name != null
                                ? categories[index].image
                                : "assets/icons/showAll.png",
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        categories[index].name != null
                            ? categories[index].name!
                            : "Show All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                "Recommended for you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 12),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.5 / 3,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.secondaryBackgroundColor
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyContainer(
                      height: 100,
                      child: Image.asset(
                        'assets/images/rice.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Rise',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
