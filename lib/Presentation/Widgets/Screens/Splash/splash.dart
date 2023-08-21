import 'package:flutter/material.dart';
import 'package:hbk_blanket_app_design/Application/NavigationServices/Router/route.dart';

import 'package:hbk_blanket_app_design/Presentation/Common/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    Future.delayed(const Duration(seconds: 3), () async {
      await Navigator.of(context).pushReplacementNamed(AppRouter.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueColor,
        body: Center(
          child: Image.asset(AssetsPaths.splash),
        ),
      ),
    );
  }
}
