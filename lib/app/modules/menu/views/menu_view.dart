import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
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
        // height: 1.sh,
        color: AppColors.GREY50,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildAppBar(
                title: 'Menu',
              ),
              CustomHeight(),
              CustomTextField(
                padding: Constants.defaultPadding,
                label: 'Search food',
                prefixIcon: Icons.search,
              ),
              CustomHeight(),
              CustomHeight(),
              MenuWidgets()
            ],
          ),
        ),
      ),
    );
  }
}

class MenuWidgets extends StatelessWidget {
  const MenuWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.sp,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: DesignContainer(),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 40.sp, left: 0),
            child: Column(
              children: [
                ...menuitems.map((e) => MenuItems(menuItem: e)),
              ],
            ),
          ),
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
              left: 40.sp, right: 40.sp, bottom: Constants.defaultmargin.sp),
          padding: EdgeInsets.symmetric(horizontal: 40.sp),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(blurRadius: 4, color: grey30, spreadRadius: 1)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(10.sp),
                  bottomRight: Radius.circular(10.sp))),
          height: 70.sp,
          // width: 280.w, //: 300.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LargeText(menuItem.name, fontSize: 18.sp, color: grey70),
              CustomHeight(
                height: 2,
              ),
              NormalText("${menuItem.items.toString()} items")
            ],
          ),
        ),
        Positioned(
          left: 5.sp,
          top: 5.sp,
          child: Image.asset(
            menuItem.icon,
            fit: BoxFit.contain,
            height: 60.sp,
            width: 60.sp,
          ),
        ),
        Positioned(
          right: 20,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => CategoryView(category: menuItem.name)));
              // Get.to(
              //   CategoryView(
              //     category: menuItem.name,
              //   ),
              // );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 24.sp,
              ),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: AppColors.WHITE,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.GREY.withOpacity(.3), spreadRadius: 1)
                ],
              ),
              child: CircleAvatar(
                backgroundColor: AppColors.WHITE,
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
        width: 70.sp,
        height: 400.sp,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
