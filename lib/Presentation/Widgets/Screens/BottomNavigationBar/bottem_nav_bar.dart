import 'package:flutter/material.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/BottomNavigationBar/BottomNavWidgets/my_bottom_nav.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/HomeScreen/home_screen.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  BottomNavigationBarScreen({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNav(),
      body: PageView(
        // physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}
