import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';

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
        child: SizedBox(
            width: 150,
            child: Image.asset(
              AssetsPaths.lock,
            )),
      ),
    );
  }
}
