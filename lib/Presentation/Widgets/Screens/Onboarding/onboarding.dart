import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/App/Router/route.dart';
import 'package:hbk_blanket_app_design/Presentation/AppStrings/onboarding_screen_strings.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/colors.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/Utils/media_query.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/Onboarding/OnBoardingWidgets/onboarding_line_row_for_next_screen_showing.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final ValueNotifier<int> currentPageIndex = ValueNotifier(0);

  final List<String> imagePaths = [
    AssetsPaths.onboarding1,
    AssetsPaths.onboarding2,
    AssetsPaths.onboarding3,
  ];
  final List<String> headingsPath = [
    OnBoardingScreenStrings.discoverWarmth,
    OnBoardingScreenStrings.effortlessShoppingExperience,
    OnBoardingScreenStrings.secureCheckoutFastDelivery,
  ];

  final List<String> subText = [
    OnBoardingScreenStrings.startYourJourney,
    OnBoardingScreenStrings.experience,
    OnBoardingScreenStrings.secureAndFast,
  ];

  void nextPage() {
    currentPageIndex.value = (currentPageIndex.value + 1) % imagePaths.length;
    currentPageIndex.value = (currentPageIndex.value + 1) % headingsPath.length;
    currentPageIndex.value = (currentPageIndex.value + 1) % headingsPath.length;
    currentPageIndex.value = (currentPageIndex.value + 1) % subText.length;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: SingleChildScrollView(
            child: SizedBox(
              // height: screenheight(context),
              width: screenwidth(context),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRouter.login);
                        },
                        child: Text(
                          OnBoardingScreenStrings.skip,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: AppColors.lightGreyColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ValueListenableBuilder(
                    valueListenable: currentPageIndex,
                    builder: (context, value, child) {
                      return Image.asset(
                        imagePaths[value],
                        width: 374.w,
                        height: 343.3.h,
                      );
                    },
                  ),
                  SizedBox(height: 54.h),
                  SizedBox(
                    width: 380,
                    height: 136,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ValueListenableBuilder(
                          valueListenable: currentPageIndex,
                          builder: (context, value, child) {
                            return Text(
                              headingsPath[value],
                              style: TextStyle(
                                fontSize: 20.spMin,
                                fontWeight: FontWeight.w700,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 18.h),
                        SizedBox(
                          width: 380.w,
                          height: 80.h,
                          child: ValueListenableBuilder(
                            valueListenable: currentPageIndex,
                            builder: (context, value, child) {
                              return Text(subText[value],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.spMin,
                                  ));
                            },
                          ),
                        ),
                        SizedBox(height: 30.h),
                        const OnboardingLineRowForNextScreenShowing(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nextPage();

                      int nextIndex = currentPageIndex.value + 1;

                      if (nextIndex < imagePaths.length) {
                        currentPageIndex.value = nextIndex;
                      } else {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRouter.login);
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.blueColor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 120.w, vertical: 8.h),
                      child: const Text(
                        OnBoardingScreenStrings.next,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
