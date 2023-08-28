import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';

ButtonStyle elevatedButtonStyles() {
  return ButtonStyle(
    minimumSize: MaterialStateProperty.all(
      Size(380.w, 65.h),
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(
      AppColors.blueColor,
    ),
  );
}
