import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/colors.dart';

class OnboardingLineRowForNextScreenShowing extends StatelessWidget {
  const OnboardingLineRowForNextScreenShowing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const OnBoardingLinesForShowingNextScreen(color: AppColors.blueColor),
        SizedBox(
          width: 5.w,
        ),
        const OnBoardingLinesForShowingNextScreen(
            color: AppColors.lightGreyColor),
        SizedBox(
          width: 5.w,
        ),
        const OnBoardingLinesForShowingNextScreen(
          color: AppColors.lightGreyColor,
        ),
      ],
    );
  }
}

class OnBoardingLinesForShowingNextScreen extends StatelessWidget {
  final Color color;
  const OnBoardingLinesForShowingNextScreen({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.w,
      height: 3.50.h,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
