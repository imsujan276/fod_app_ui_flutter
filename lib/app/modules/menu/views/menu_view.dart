import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/data/models/menuItem.dart';
import 'package:food_delivery/app/modules/category/views/category_view.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

import 'package:get/get.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Container(
        height: 1.sh,
        color: Colors.grey[100],
        child: SafeArea(
          child: Column(
            children: [
              buildAppBar(
                title: 'Menu',
              ),
              CustomHeight(),
              CustomTextField(
                label: 'Search food',
                prefixIcon: Icons.search,
              ),
              CustomHeight(
                height: 30,
              ),
              Expanded(
                child: Container(
                  height: .6.sh,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: DesignContainer(),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20.sp),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...menuitems.map((e) => MenuItems(menuItem: e)),
                            ],
                          )),
                      // Container(
                      //   height: 70.h,
                      //   width: 300.w,
                      //   color: Colors.grey,
                      //   child: Center(
                      //     child: Column(
                      //       // mainAxisAlignment: MainAxisAlignment.center,
                      //       // crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         Container(
                      //           decoration: BoxDecoration(
                      //               color: Colors.white,
                      //               borderRadius: BorderRadius.only(
                      //                   topLeft: Radius.circular(30),
                      //                   bottomLeft: Radius.circular(30),
                      //                   topRight: Radius.circular(10.sp),
                      //                   bottomRight: Radius.circular(10.sp))),
                      //           height: 70.h,
                      //           width: 300.w,
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({
    Key? key,
    required this.menuItem,
  }) : super(key: key);
  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: 40.sp, right: 20.sp, bottom: Constants.defaultmargin.sp),
          padding: EdgeInsets.symmetric(horizontal: 40.sp),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 4, color: Colors.grey.shade300, spreadRadius: 1)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(10.sp),
                  bottomRight: Radius.circular(10.sp))),
          height: 70.h,
          width: context.isLandscape ? 0.8.sw : 300.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LargeText(menuItem.name,
                  fontSize: 18.sp, color: Colors.grey.shade600),
              CustomHeight(
                height: 2,
              ),
              NormalText("${menuItem.items.toString()} items")
            ],
          ),
        ),
        Positioned(
          left: 5.sp,
          top: 10.sp,
          child: Image.asset(AppImages.alireza, height: 50.h, width: 50.h),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            onTap: () {
              // Get.to(MyApp());
              Get.to(
                  CategoryView(
                    category: menuItem.name,
                  ),
                  transition: Transition.noTransition);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 24.sp,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, spreadRadius: 1)
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15.sp,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).primaryColor,
                  size: 15.sp,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DesignContainer extends StatelessWidget {
  const DesignContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.sp),
          bottomRight: Radius.circular(30.sp)),
      child: Container(
        width: context.isLandscape ? .15.sw : 80.w,
        height: .6.sh,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
