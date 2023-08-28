import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Application/NavigationServices/Router/route.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/login_screen_strings.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/textfield_decoration.dart';

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
          decoration: containerShapeDecorationForTextField(),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Align(
              alignment: Alignment.center,
              child: TextFormField(
                decoration: inputDecorationForTextField(
                  prefixIcon: Icons.email,
                  hintText: LoginScreenStrings.cardCode,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
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
                  hintText: LoginScreenStrings.password,
                  suffixIcon: GestureDetector(
                    onTap: () => togglePasswordView(),
                    child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                      size: 17.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AppRouter.resetPassword);
            },
            child: Text(
              LoginScreenStrings.forgetPassword,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                height: 1.71,
              ),
            ),
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
//  onTap: () => togglePasswordView(),
                