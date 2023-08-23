import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AppStrings/onboarding_screen_strings.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';

import '../../../../Application/NavigationServices/Router/route.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final ValueNotifier<int> currentIndex = ValueNotifier(0);
  final PageController _pageController = PageController(initialPage: 0);

  final List<Map<String, String>> onboardingData = [
    {
      'title': OnBoardingScreenStrings.discoverWarmth,
      'description': OnBoardingScreenStrings.startYourJourney,
      'image': AssetsPaths.onboarding1,
    },
    {
      'title': OnBoardingScreenStrings.effortlessShoppingExperience,
      'description': OnBoardingScreenStrings.experience,
      'image': AssetsPaths.onboarding2,
    },
    {
      'title': OnBoardingScreenStrings.secureCheckoutFastDelivery,
      'description': OnBoardingScreenStrings.secureAndFast,
      'image': AssetsPaths.onboarding3,
    },
  ];

  void nextPage() {
    if (currentIndex.value < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void navigateToLoginScreen() {
    Navigator.of(context).pushReplacementNamed(AppRouter.login);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: InkWell(
                onTap: navigateToLoginScreen,
                child: currentIndex.value == onboardingData.length - 1
                    ? const SizedBox()
                    : Text(
                        'Skip',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: AppColors.lightGreyColor,
                          fontSize: 16.spMin,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
              ),
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 20.h),
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingData.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex.value = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return buildPageContent(
                      onboardingData[index]['title']!,
                      onboardingData[index]['description']!,
                      onboardingData[index]['image']!,
                      index == onboardingData.length - 1,
                    );
                  },
                ),
                Positioned(
                  bottom: 60,
                  width: 350.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < onboardingData.length; i++)
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Container(
                            width: 25.w,
                            height: 6.50.h,
                            decoration: ShapeDecoration(
                              color: currentIndex.value == i
                                  ? AppColors.blueColor
                                  : AppColors.lightGreyColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ValueListenableBuilder<int>(
                    valueListenable: currentIndex,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        onPressed: value == onboardingData.length - 1
                            ? navigateToLoginScreen
                            : nextPage,
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(300.w, 60.h)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.blueColor,
                          ),
                        ),
                        child: Text(
                          value == onboardingData.length - 1
                              ? 'Get Started'
                              : 'Next',
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPageContent(
      String title, String description, String image, bool isLastPage) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 374.w,
          height: 335.3.h,
        ),
        SizedBox(height: 54.h),
        SizedBox(
          width: 380.w,
          height: 160.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.spMin,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 13.h),
              SizedBox(
                width: 390.w,
                height: 110.h,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.spMin,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
