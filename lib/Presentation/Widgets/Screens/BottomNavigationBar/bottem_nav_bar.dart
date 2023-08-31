import 'package:flutter/material.dart';
import 'package:hbk_blanket_app_design/Application/Controllers/ui_controller.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/BottomNavigationBar/BottomNavWidgets/my_bottom_nav.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/HomeScreen/home_screen.dart';
import 'package:provider/provider.dart';

class BottemNavBar extends StatelessWidget {
  const BottemNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNav(),
      body: Consumer<UiController>(
        builder: (context, value, child) {
          return PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: value.pageController,
            children: [
              HomeScreen(),
              Center(child: Text("2")),
              Center(child: Text("3")),
              Center(child: Text("4")),
              Center(child: Text("5")),
            ],
          );
        },
      ),
    );
  }
}
