import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Application/NavigationServices/Router/route.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/varification_code_screen_strings.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/elevated_button_styles.dart';

class VarificationCode extends StatelessWidget {
  const VarificationCode({super.key});

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
                    // AssetsPaths.logo,
                    width: 130.w,
                    height: 99.h,
                  ),
                ),
                SizedBox(
                  height: 77.h,
                ),
                SizedBox(
                  width: 380.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        VarificationCodeScreenStrings.almostThere,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        VarificationCodeScreenStrings.varificationCodeSent,
                        style: TextStyle(
                          fontSize: 16.spMin,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 48.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 20,
                            color: Colors.white,
                            shadowColor:
                                const Color.fromARGB(255, 214, 214, 214),
                            child: SizedBox(
                              width: 77.w,
                              height: 80.h,
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 20,
                            color: Colors.white,
                            shadowColor:
                                const Color.fromARGB(255, 214, 214, 214),
                            child: SizedBox(
                              width: 77.w,
                              height: 80.h,
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 20,
                            color: Colors.white,
                            shadowColor:
                                const Color.fromARGB(255, 214, 214, 214),
                            child: SizedBox(
                              width: 77.w,
                              height: 80.h,
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 20,
                            color: Colors.white,
                            shadowColor:
                                const Color.fromARGB(255, 214, 214, 214),
                            child: SizedBox(
                              width: 77.w,
                              height: 80.h,
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 230.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRouter.createPassword);
                    },
                    style: elevatedButtonStyles(),
                    child: const Text(VarificationCodeScreenStrings.varify),
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
