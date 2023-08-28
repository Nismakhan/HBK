import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/create_password_strings.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/textfield_decoration.dart';

class TextFieldsForCreatePassword extends StatefulWidget {
  const TextFieldsForCreatePassword({
    super.key,
  });

  @override
  State<TextFieldsForCreatePassword> createState() =>
      _TextFieldsForCreatePasswordState();
}

bool _isHidden = true;

class _TextFieldsForCreatePasswordState
    extends State<TextFieldsForCreatePassword> {
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
            decoration: containerShapeDecorationForTextField(),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Align(
                alignment: Alignment.center,
                child: TextFormField(
                  obscureText: _isHidden,
                  obscuringCharacter: '*',
                  decoration: inputDecorationForTextField(
                    prefixIcon: Icons.lock,
                    hintText: CreatePasswordScreenStrings.newPasswordHint,
                    suffixIcon: GestureDetector(
                      onTap: () => togglePasswordView(),
                      child: Icon(
                        _isHidden ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Container(
            width: 380.w,
            height: 80.h,
            decoration: containerShapeDecorationForTextField(),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Align(
                alignment: Alignment.center,
                child: TextFormField(
                  obscureText: _isHidden,
                  obscuringCharacter: '*',
                  decoration: inputDecorationForTextField(
                    prefixIcon: Icons.lock,
                    hintText: CreatePasswordScreenStrings.confirmPasswordHint,
                    suffixIcon: GestureDetector(
                      onTap: () => togglePasswordView(),
                      child: Icon(
                        _isHidden ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
