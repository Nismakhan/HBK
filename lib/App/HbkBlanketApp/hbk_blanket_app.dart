import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hbk_blanket_app_design/App/Router/route.dart';

class HBKBlanketApp extends StatelessWidget {
  const HBKBlanketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(425, 926),
      builder: (context, child) {
        return MaterialApp(
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
