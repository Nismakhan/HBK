import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/AssetsPath/assets_path.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/colors.dart';
import 'package:hbk_blanket_app_design/Data/DataSource/Utils/media_query.dart';
import 'package:hbk_blanket_app_design/Presentation/Common/elevated_button_styles.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "hh",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "hh",
          ),
        ]),
        drawer: const Drawer(),
        body: SizedBox(
          height: screenheight(context),
          width: screenwidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                            ),
                          ),
                          const Icon(
                            Icons.notification_add_sharp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Account balance',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'RS',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' 50,490',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: SizedBox(
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
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 19.spMin,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          SizedBox(
                            height: 100.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const Categories(
                                  imagePath: AssetsPaths.generalProduct,
                                  text: "General Products",
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                const Categories(
                                  imagePath: AssetsPaths.babyBlanket,
                                  text: "Baby Blanket",
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                const Categories(
                                  imagePath: AssetsPaths.flannelBlanket,
                                  text: "Flannel Blanket",
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                const Categories(
                                  imagePath: AssetsPaths.flannelSets,
                                  text: "Flannel sets",
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                const Categories(
                                  imagePath: AssetsPaths.simpleBedBlanket,
                                  text: "Simple Bed Blanket",
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                const Categories(
                                  imagePath: AssetsPaths.doubleBedBlanket,
                                  text: "Double Bed Blanket",
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                const Categories(
                                  imagePath: AssetsPaths.bedCoverSet,
                                  text: "Bed Cover Set",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
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
                          SizedBox(
                            height: 19.h,
                          ),
                          SizedBox(
                            height: 280.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const ProductCards(
                                  imagePath: AssetsPaths.logo,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const ProductCards(
                                  imagePath: AssetsPaths.logo,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const ProductCards(
                                  imagePath: AssetsPaths.logo,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
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
                          SizedBox(
                            height: 19.h,
                          ),
                          SizedBox(
                            height: 280.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const ProductCards(
                                  imagePath: AssetsPaths.logo,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const ProductCards(
                                  imagePath: AssetsPaths.borjan,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

class ProductCards extends StatelessWidget {
  const ProductCards({
    required this.imagePath,
    super.key,
  });
  final String imagePath;

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
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Belpla Teenagers 1 Ply Single Bed Blanket',
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
