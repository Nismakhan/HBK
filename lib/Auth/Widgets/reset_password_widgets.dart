import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/colors.dart';

import '../../Presentation/AppStrings/reset_password_screen_strings.dart';

class TextFieldForResetPasswordScreen extends StatelessWidget {
  const TextFieldForResetPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ResetPasswordScreenStrings.cantSignIn,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            ResetPasswordScreenStrings.enterYourEmail,
            style: TextStyle(
              fontSize: 16.spMin,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          Container(
            width: 380.w,
            height: 80.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.r),
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0x0F000000),
                  blurRadius: 12.r,
                  offset: const Offset(0, 6),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.email),
                  prefixIconColor: AppColors.blueColor,
                  hintText: ResetPasswordScreenStrings.exampleHint,
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blueColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
