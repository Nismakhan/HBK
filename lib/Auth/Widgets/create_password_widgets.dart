import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Presentation/AppStrings/create_password_strings.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/colors.dart';

class TextFieldsForCreatePassword extends StatelessWidget {
  const TextFieldsForCreatePassword({
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
            CreatePasswordScreenStrings.createNewAcount,
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
            CreatePasswordScreenStrings.setPassword,
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
                  prefixIcon: const Icon(Icons.lock),
                  prefixIconColor: AppColors.lightGreyColor,
                  hintText: CreatePasswordScreenStrings.newPasswordHint,
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGreyColor,
                  )),
            ),
          ),
          SizedBox(
            height: 25.h,
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
                  prefixIcon: const Icon(Icons.lock),
                  prefixIconColor: AppColors.lightGreyColor,
                  hintText: CreatePasswordScreenStrings.confirmPasswordHint,
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGreyColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogBox extends StatelessWidget {
  const DialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actionsOverflowAlignment: OverflowBarAlignment.end,
      content: SizedBox(
        height: 259.h,
        width: 380.w,
        // color: Colors.red,
        child: SizedBox(width: 150, child: Image.asset(AssetsPaths.lock)),
      ),
    );
  }
}
