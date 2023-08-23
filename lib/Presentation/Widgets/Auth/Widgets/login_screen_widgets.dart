import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/login_screen_strings.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';

class TextFieldsContainer extends StatefulWidget {
  const TextFieldsContainer({
    super.key,
  });

  @override
  State<TextFieldsContainer> createState() => _TextFieldsContainerState();
}

bool _isHidden = true;

class _TextFieldsContainerState extends State<TextFieldsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
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
              )
            ],
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.email),
                  hintText: LoginScreenStrings.cardCode,
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGreyColor,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          width: 380.w,
          height: 80.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
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
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: () => togglePasswordView(),
                  child: Icon(
                    _isHidden ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                hintText: LoginScreenStrings.password,
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGreyColor,
                ),
              ),
              obscureText: _isHidden,
              obscuringCharacter: '*',
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          LoginScreenStrings.forgetPassword,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            height: 1.71,
          ),
        ),
      ],
    );
  }

  void togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
