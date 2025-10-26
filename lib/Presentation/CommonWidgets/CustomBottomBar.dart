import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship_second_task/Configuration/AppColors.dart';
import 'package:internship_second_task/Presentation/Views/CartScreen.dart';
import 'package:internship_second_task/Presentation/Views/HomeScreen.dart';
import 'package:internship_second_task/Presentation/Views/OrdersScreen.dart';
import 'package:internship_second_task/Presentation/Views/ProfileScreen.dart';
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
    OrdersScreen(),
    SavedItem(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteRelatedColor,
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color(0xFFE0E0E0),
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: AppColors.whiteRelatedColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0, // remove shadow if any
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
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? Colors.red : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                height: 30,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? Colors.red : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/document.svg',
                height: 30,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? Colors.red : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/heart.svg',
                height: 30,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? Colors.red : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/document.svg',
                height: 30,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? Colors.red : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
