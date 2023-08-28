import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';

import 'package:hbk_blanket_app_design/Presentation/Common/elevated_button_styles.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Widgets/create_password_widgets.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/create_password_strings.dart';

import '../../../Common/dailoge.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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
                    width: 130.w,
                    height: 99.h,
                  ),
                ),
                SizedBox(
                  height: 77.h,
                ),
                const TextFieldsForCreatePassword(),
                SizedBox(
                  height: 130.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const DialogBox();
                          });
                    },
                    style: elevatedButtonStyles(),
                    child: const Text(
                        CreatePasswordScreenStrings.createNewPassword),
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
