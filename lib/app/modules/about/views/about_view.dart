import 'package:flutter/material.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:get/get.dart';

import '../controllers/about_controller.dart';
import 'detail_widget.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildAppBar(
                onPressed: () {
                  Get.back();
                },
                title: 'About Us',
                isBold: false),
            CustomHeight(),
            ...aboutus_data.map((details) => AboutUsDetails(details: details))
          ],
        ),
      ),
    ));
  }
}
