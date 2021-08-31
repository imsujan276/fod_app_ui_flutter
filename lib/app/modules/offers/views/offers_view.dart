import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';

import 'package:get/get.dart';

import '../controllers/offers_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersView extends GetView<OffersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('OffersView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.sp),
        child: Column(
          children: [
            buildAppBar(title: 'Offers'),
            
          ],
        ),
      ),
    ));
  }
}
