import 'package:flutter/material.dart';
import 'package:food_delivery/app/constants/constants.dart'; 
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/modules/detail/views/detail_view.dart';
import 'package:food_delivery/app/modules/menupage/controllers/menupage_controller.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
 
import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import 'foodItem.dart';

const categoryItems = [
  AppImages.base + '/daa.png',
  AppImages.base + '/db.png',
  AppImages.base + '/dc.png',
  AppImages.base + '/dd.png',
];

class CategoryView extends GetView<CategoryController> {
  final menuController = Get.find<MenupageController>();
  final String category;

  CategoryView({required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: ResponsiveLayout(
            mobile: Column(
              children: [
                buildAppBar(
                    title: category,
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                CustomHeight(
                  height: 10,
                ),
                CustomTextField( padding: Constants.defaultPadding,prefixIcon: Icons.search, label: 'Search food'),
                CustomHeight(
                  height: 30,
                ),
                ...categoryItems.map(
                  (e) => FoodItem(
                      image: e,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => DetailView()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
