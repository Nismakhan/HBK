import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/App/Router/route.dart';

import 'package:hbk_blanket_app_design/Presentation/Common/AssetsPath/assets_path.dart';

class VarificationCode extends StatelessWidget {
  const VarificationCode({super.key});

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
              SizedBox(
                width: 380.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Almost there',
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
                      'Verification code sent to example@gmail.com, input code to verify your account',
                      style: TextStyle(
                        fontSize: 16.spMin,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    SizedBox(
                      width: 380,
                      height: 76,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 77.w,
                            height: 110.h,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.50, vertical: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 77.w,
                            height: 110.h,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.50, vertical: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 77.w,
                            height: 110.h,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.50, vertical: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 77.w,
                            height: 110.h,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.50, vertical: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 230.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRouter.createPassword);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r)))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 19.h, horizontal: 100.w),
                  child: Text(
                    'Varify',
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
