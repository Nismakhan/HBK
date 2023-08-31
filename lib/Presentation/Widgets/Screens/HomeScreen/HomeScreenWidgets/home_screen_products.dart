import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Extensions/custom_sizedbox.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/lists.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/media_query.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/HomeScreen/HomeScreenWidgets/categries.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/HomeScreen/HomeScreenWidgets/product_cards.dart';

import '../../../../../Data/DataSource/AssetsPath/assets_path.dart';

class HomeScreenProducts extends StatelessWidget {
  const HomeScreenProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenwidth(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AssetsPaths.cuteBabyStore,
                  width: screenwidth(context),
                  // height: 180.h,
                ),
                Positioned(
                  bottom: -30.h,
                  left: 100,
                  right: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i <= 2; i++)
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Container(
                            width: 15.w,
                            height: 3.50.h,
                            decoration: ShapeDecoration(
                              color: i == 0
                                  ? AppColors.blueColor
                                  : AppColors.lightGreyColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            50.cusSH,
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 19.spMin,
                fontWeight: FontWeight.w500,
              ),
            ),
            19.cusSH,
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                itemCount: Lists.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final categoriesData = Lists.categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Categories(
                      imagePath: categoriesData.assetsPaths,
                      text: categoriesData.productName,
                    ),
                  );
                },
              ),
            ),
            19.cusSH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New arrivals',
                  style: TextStyle(
                    fontSize: 19.spMin,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            19.cusSH,
            SizedBox(
              height: 280.h,
              child: ListView.builder(
                itemCount: Lists.newArrivals.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final newArrivalsData = Lists.newArrivals[index];
                  return ProductCards(
                    imagePath: newArrivalsData.assetsPaths,
                    text: newArrivalsData.description,
                  );
                },
              ),
            ),
            19.cusSH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Sold Products',
                  style: TextStyle(
                    fontSize: 19.spMin,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            19.cusSH,
            SizedBox(
              height: 280.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const ProductCards(
                    imagePath: AssetsPaths.logo,
                    text: "hjn",
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
