import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Presentation/Views/CartScreen.dart';
import 'package:internship_second_task/Presentation/Views/HomeScreen.dart';
import 'package:internship_second_task/Presentation/Views/SavedItem.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CartScreen(),
    SavedItem(),
    SavedItem(),
    SavedItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: AppColors.whiteRelatedColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 30,
              color: _currentIndex == 0 ? Colors.red : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              height: 30,
              color: _currentIndex == 1 ? Colors.red : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/document.svg',
              height: 30,
              color: _currentIndex == 2 ? Colors.red : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/heart.svg',
              height: 30,
              color: _currentIndex == 3 ? Colors.red : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/document.svg',
              height: 30,
              color: _currentIndex == 4 ? Colors.red : Colors.grey,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
