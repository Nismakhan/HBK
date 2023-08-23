import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Application/NavigationServices/Router/route.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/login_screen_strings.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Widgets/login_screen_widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 151.h, right: 24.w, left: 24.w),
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(children: [
                Center(
                  child: Image.asset(
                    AssetsPaths.logo,
                    width: 130.w,
                    height: 99.h,
                  ),
                ),
                SizedBox(
                  height: 77.h,
                ),
                Text(
                  // LoginScreenStrings.logintoYourAccountAndGetStarted,
                  LoginScreenStrings.logintoYourAccountAndGetStarted,

                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 69.h,
                ),
                const TextFieldsContainer(),
                SizedBox(
                  height: 130.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRouter.resetPassword);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      AppColors.blueColor,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 120.w, vertical: 8.h),
                    child: const Text(LoginScreenStrings.login),
                  ),
                ),
                Text(
                  LoginScreenStrings.loginAsGuest,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
