import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/category/views/category_view.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';
// ScreenUtil
import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: ResponsiveLayout(
            mobile: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding,
                  vertical: Constants.defaultPadding),
              height: 300.h,
              width: double.infinity,
              color: Colors.grey,
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     LargeText(
              //       'French Apple Pie',
              //       color: Theme.of(context).scaffoldBackgroundColor,
              //     ),
              //     Row(children: [
              //       Icon(
              //         Icons.star,
              //         color: Theme.of(context).primaryColor,
              //       ),
              //       RichText(
              //           text: TextSpan(
              //         style: TextStyle(
              //             color: Theme.of(context).scaffoldBackgroundColor),
              //         children: [
              //           TextSpan(
              //               text: '4.6 ',
              //               style: TextStyle(
              //                   color: Theme.of(context).primaryColor)),
              //           TextSpan(
              //             text: 'Minute by tuk Tuk',
              //           ),
              //           WidgetSpan(child: dot(context)),
              //           TextSpan(text: 'Dessert')
              //         ],
              //       ))
              //     ])
              //   ],
              // ),
            ),
            Container(
                height: 700.h,
                margin: EdgeInsets.only(top: 260.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.black,
                ),
                child: Stack(
                  children: [],
                )

                //  Column(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [],
                // ),
                ),
            buildAppBar(onPressed: () {
              Get.back();
            }),
            Positioned(
              top: 240.h,
              right: 20,
              child: Container(
                color: Colors.white,
                height: 40,
                width: 40,
                child: Icon(
                  Icons.favorite,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
