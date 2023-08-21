import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Widgets/create_password_widgets.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/create_password_strings.dart';

import 'package:hbk_blanket_app_design/Presentation/Common/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/colors.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              const TextFieldsForCreatePassword(),
              SizedBox(
                height: 130.h,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed(AppRouter.varificationCode);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const DialogBox();
                      });
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
                      EdgeInsets.symmetric(vertical: 19.h, horizontal: 80.w),
                  child: Text(
                    CreatePasswordScreenStrings.createNewPassword,
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
    );
  }
}
