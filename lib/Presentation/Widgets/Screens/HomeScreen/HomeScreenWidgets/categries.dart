import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  const Categories({
    required this.imagePath,
    required this.text,
    super.key,
  });
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          imagePath,
          width: 50.w,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.spMin,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
