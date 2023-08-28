import 'package:flutter/material.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

int currentIndex = 0;
PageController pageController = PageController(initialPage: 0);
void changeindex(int index) {
  currentIndex = index;
  pageController.animateToPage(
    currentIndex,
    duration: const Duration(milliseconds: 200),
    curve: Curves.easeIn,
  );
}

class _MyBottomNavState extends State<MyBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: AppColors.blueColor,
      onTap: (value) {
        setState(() {
          changeindex(value);
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
      ],
    );
  }
}
