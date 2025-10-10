import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  final List<Widget> _screens = [HomeScreen(), CartScreen(), SavedItem()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.deepPurple,
        backgroundColor: Colors.lightBlue,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: "Quotes",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "Create"),
        ],
      ),
    );
  }
}
