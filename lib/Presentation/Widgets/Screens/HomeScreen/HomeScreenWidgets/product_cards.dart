import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Extensions/custom_sizedbox.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/elevated_button_styles.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({
    required this.imagePath,
    required this.text,
    super.key,
  });
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 260.h,
          width: 160.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  imagePath,
                  width: 90.w,
                  height: 90.h,
                ),
                10.cusSH,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16.spMin,
                        fontWeight: FontWeight.w400,
                        height: 1.38.h,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'RS',
                            style: TextStyle(
                              fontSize: 12.spMin,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              fontSize: 14.spMin,
                            ),
                          ),
                          TextSpan(
                            text: '5490',
                            style: TextStyle(
                              color: AppColors.blueColor,
                              fontSize: 16.spMin,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyles(),
                  child: Row(
                    children: [
                      const Icon(Icons.lock),
                      SizedBox(
                        width: 6.w,
                      ),
                      const Text("Add to cart"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
