import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Application/NavigationServices/Router/route.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Widgets/reset_password_widgets.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/reset_password_screen_strings.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                const TextFieldForResetPasswordScreen(),
                SizedBox(
                  height: 230.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRouter.varificationCode);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    ),
                    backgroundColor:
                        const MaterialStatePropertyAll(AppColors.blueColor),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 19.h, horizontal: 100.w),
                    child: Text(
                      ResetPasswordScreenStrings.resetPassword,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.spMin,
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
