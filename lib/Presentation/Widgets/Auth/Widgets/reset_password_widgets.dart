import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/textfield_decoration.dart';
import '../../../../Data/DataSource/AppStrings/reset_password_screen_strings.dart';

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
            decoration: containerShapeDecorationForTextField(),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Align(
                alignment: Alignment.center,
                child: TextFormField(
                    decoration: inputDecorationForTextField(
                        prefixIcon: Icons.email,
                        hintText: "Example@gmail.com")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
