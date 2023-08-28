import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hbk_blanket_app_design/Application/NavigationServices/Router/route.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/BottomNavigationBar/bottem_nav_bar.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/HomeScreen/home_screen.dart';

void main() {
  runApp(const HBKBlanketApp());
}

class HBKBlanketApp extends StatelessWidget {
  const HBKBlanketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(425, 926),
      builder: (context, child) {
        return MaterialApp(
          home: HomeScreen(),
          theme: ThemeData(fontFamily: "CircularStd Regular"),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) {
            return AppRouter.onGenerateRoute(settings);
          },
        );
      },
    );
  }
}
