import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Application/Controllers/ui_controller.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<UiController>(
      builder: (context, provider, child) {
        return BottomNavigationBar(
          currentIndex: provider.currentIndex,
          selectedItemColor: AppColors.blueColor,
          unselectedItemColor: AppColors.lightGreyColor,
          iconSize: 20.sp,
          selectedLabelStyle: TextStyle(
            fontSize: 13.sp,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 13.sp,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: ((value) {
            provider.changeindex(value);
          }),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPaths.homeIcon,
                color: provider.currentIndex == 0
                    ? AppColors.blueColor
                    : AppColors.lightGreyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPaths.dashboardIcon,
                color: provider.currentIndex == 1
                    ? AppColors.blueColor
                    : AppColors.lightGreyColor,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPaths.productsIcon,
                color: provider.currentIndex == 2
                    ? AppColors.blueColor
                    : AppColors.lightGreyColor,
              ),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPaths.cartIcon,
                color: provider.currentIndex == 3
                    ? AppColors.blueColor
                    : AppColors.lightGreyColor,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPaths.productsIcon,
                color: provider.currentIndex == 4
                    ? AppColors.blueColor
                    : AppColors.lightGreyColor,
              ),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
