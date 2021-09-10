import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/data/models/categoryItem.dart';
import 'package:food_delivery/app/data/models/mostPopular.dart';
import 'package:food_delivery/app/data/models/popularResturant.dart';
import 'package:food_delivery/app/data/models/recentItems.dart';
import 'package:food_delivery/app/modules/cart/views/cart_view.dart';
import 'package:food_delivery/app/modules/detail/views/detail_view.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'dart:math' as math;

import 'package:food_delivery/app/widgets/texts/normal_text.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ListView(
        children: [
          buildAppBar(title: Strings.good_morning + ' Akila!'),
          CustomHeight(height: 6),
          _buildAddressWidget(context),
          CustomHeight(height: 16),
          CustomTextField(
            padding: Constants.defaultPadding,
            prefixIcon: Icons.search,
            label: Strings.search_food,
          ),
          CustomHeight(),
          _categoryWidget(),
          CustomHeight(),
          popularResturant(context),
          CustomHeight(),
          _mostPopular(context),
          CustomHeight(),
          _recentItems(context),
          CustomHeight(),
        ],
      ),
    );
  }

  Widget _recentItems(context) {
    return Column(
      children: [
        TitleWidget(name: Strings.recent_items, ontap: () {}),
        CustomHeight(
          height: 15,
        ),
        ...recentData.map(
          (e) => Container(
            height: 60.h,
            margin: EdgeInsets.only(bottom: Constants.defaultmargin),
            padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Image.asset(e.image),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NormalText(
                      '${e.name} by ${e.uploadedResturant}',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: grey70,
                    ),
                    CustomHeight(height: 3),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                            children: [
                          TextSpan(text: 'Cafe'),
                          WidgetSpan(
                              child: Container(
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            height: 2.h,
                            width: 2.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColor),
                          )),
                          TextSpan(text: e.type),
                        ])),
                    CustomHeight(height: 3),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                            children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.star,
                              color: Theme.of(context).primaryColor,
                              size: 16.sp,
                            ),
                          ),
                          TextSpan(
                              text: e.stars.toString(),
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                          TextSpan(text: ' (${e.ratings} ratings)')
                        ]))
                  ],
                ))
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _mostPopular(context) {
    return Column(
      children: [
        TitleWidget(name: Strings.most_popular, ontap: () {}),
        CustomHeight(
          height: 15,
        ),
        Container(
          height: 180.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mostPopular.length,
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              height: 100.h,
                              child: Image.asset(AppImages.aurelin))),
                      CustomHeight(
                        height: 8,
                      ),
                      NormalText(
                        mostPopular[i].name,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                              ),
                              children: [
                            TextSpan(text: 'Cafe'),
                            WidgetSpan(
                                child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              height: 2.h,
                              width: 2.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                            )),
                            TextSpan(text: mostPopular[i].type),
                            // TextSpan(text: '(${122} ratings) '),
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                color: Theme.of(context).primaryColor,
                                size: 16.sp,
                              ),
                            ),
                            TextSpan(
                                text: mostPopular[i].stars.toString(),
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            WidgetSpan(
                                child: SizedBox(
                              width: 20.sp,
                            )),
                          ]))
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }

  Widget popularResturant(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(name: Strings.popular_resturant, ontap: () {}),
        ...resturantData.map((e) => PopularResturantWidget(
              resturantModel: e,
            ))
      ],
    );
  }

  Widget _categoryWidget() {
    return Container(
        height: 90.h,
        child: ListView.builder(
            padding: EdgeInsets.only(left: 16.sp),
            scrollDirection: Axis.horizontal,
            itemCount: categoryData.length,
            itemBuilder: (_, i) {
              return Container(
                width: 80.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          child: Image.asset(
                            categoryData[i].icon,
                            fit: BoxFit.fill,
                          ),
                          height: 60.h,
                          width: 60.h,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Flexible(
                        child: NormalText(
                          categoryData[i].name,
                          color: grey70,
                          isCentered: true,
                          fontSize: Constants.defaultFontSize,
                          // isBold: true,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              );
            }));
  }

  Widget _buildAddressWidget(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivering to ', style: TextStyle(color: Colors.grey.shade400)),
          Container(height: 5),
          Row(children: [
            NormalText(
              'Current Location',
              color: Colors.grey.shade700,
              isBold: true,
            ),
            Container(
              width: 10,
            ),
            Transform.rotate(
                angle: 90 * math.pi / 180,
                child: Icon(Icons.arrow_forward_ios,
                    size: 15, color: Theme.of(context).primaryColor))
          ]),
        ],
      ),
    );
  }
}

Widget buildAppBar(
    {String title = '',
    onPressed = null,
    isBold = false,
    shoppingicon = true}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 16.sp),
    child: Row(
      children: [
        if (onPressed != null)
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios,
              color: title == '' ? Colors.white : Colors.grey.shade600,
            ),
          ),
        LargeText(
          title,
          color: Colors.grey.shade600,
          isBold: isBold,
        ),
        Spacer(),
        if (shoppingicon)
          IconButton(
              onPressed: () {
                Get.to(() => CartView());
              },
              icon: Icon(
                Icons.shopping_cart,
                color: title == '' ? Colors.white : Colors.grey,
              ))
      ],
    ),
  );
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.name,
    required Null Function() ontap,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          LargeText(
            name,
            fontSize: 18.sp,
            color: Colors.grey.shade800,
          ),
          Spacer(),
          LargeText(
            'View All',
            fontSize: 12.sp,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}

class PopularResturantWidget extends StatelessWidget {
  const PopularResturantWidget({
    Key? key,
    required this.resturantModel,
  }) : super(key: key);
  final PopularResturantModel resturantModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => DetailView()));
      },
      child: Column(
        children: [
          CustomHeight(),
          Container(
            width: double.infinity,
            child: Image.asset(
              resturantModel.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 14.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  resturantModel.name,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700],
                  fontSize: 16.sp,
                ),
                CustomHeight(
                  height: 3,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                        children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.sp,
                        ),
                      ),
                      TextSpan(
                          text: resturantModel.stars.toString(),
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      TextSpan(text: '(${resturantModel.ratings} ratings) '),
                      TextSpan(text: 'Cafe'),
                      WidgetSpan(
                          child: SizedBox(
                        width: 20.sp,
                      )),
                      TextSpan(text: 'Western Food')
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomHeight extends StatelessWidget {
  const CustomHeight({
    Key? key,
    this.height = 20,
  }) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(height: height.h);
  }
}
