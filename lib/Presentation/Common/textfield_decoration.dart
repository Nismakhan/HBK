import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';

InputDecoration inputDecorationForTextField({
  required IconData? prefixIcon,
  Widget? suffixIcon,
  required String hintText,
}) {
  return InputDecoration(
      border: InputBorder.none,
      prefixIcon: Icon(
        prefixIcon,
        size: 17.sp,
      ),
      suffixIcon: suffixIcon,
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightGreyColor,
      ));
}

ShapeDecoration containerShapeDecorationForTextField() {
  return ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.r),
    ),
    shadows: [
      BoxShadow(
        color: const Color(0x0F000000),
        blurRadius: 12.r,
        offset: const Offset(0, 6),
      )
    ],
  );
}
