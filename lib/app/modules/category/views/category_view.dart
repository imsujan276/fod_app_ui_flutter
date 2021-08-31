import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/menupage/controllers/menupage_controller.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/menupage/views/menupage_view.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  final menuController = Get.find<MenupageController>();
  final String category;

  CategoryView({required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: SafeArea(
        child: ResponsiveLayout(
          mobile: Column(
            children: [
              buildAppBar(
                  title: category,
                  onPressed: () {
                   Get.back();
                  }),
              CustomTextField(prefixIcon: Icons.search, label: 'Search food'),
              CustomHeight(),
              FoodItem(onPressed: () {
                Get.toNamed(Routes.DETAIL);
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(
        () => FloatingActionButton(
          child: Icon(FontAwesomeIcons.home,
              color: // controller.currentIndex == 0
                  //?
                  Colors.grey.shade200
              //: Colors.grey,
              ),
          backgroundColor: menuController.currentIndex == 0
              ? Theme.of(context).primaryColor
              : Colors.grey,
          onPressed: () {
            menuController.updateCurrentIndex(0);
          },
        ),
      ),
      // Center(
      //   child: Text(
      //     'CategoryView is working',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
    );
  }
}

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding,
            vertical: Constants.defaultPadding),
        height: 300.h,
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LargeText(
              'French Apple Pie',
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            Row(children: [
              Icon(
                Icons.star,
                color: Theme.of(context).primaryColor,
              ),
              RichText(
                  text: TextSpan(
                style:
                    TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
                children: [
                  TextSpan(
                      text: '4.6 ',
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                  TextSpan(
                    text: 'Minute by tuk Tuk',
                  ),
                  WidgetSpan(child: dot(context)),
                  TextSpan(text: 'Dessert')
                ],
              ))
            ])
          ],
        ),
      ),
    );
  }
}

Widget dot(context) {
  return Container(
    margin: EdgeInsets.all(5),
    alignment: Alignment.center,
    height: 2.h,
    width: 2.h,
    decoration: BoxDecoration(
        shape: BoxShape.circle, color: Theme.of(context).primaryColor),
  );
}
