import 'package:flutter/material.dart';
import 'package:food_delivery/app/data/models/popularResturant.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

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
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(title: 'Latest Offers', isBold: false),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: NormalText('Find discount Offers special'),
              ),
              CustomHeight(),
              Container(
                width: 180.w,
                child: CustomTextButton(
                  label: 'Check offers',
                  onPressed: () {},
                ),
              ),
              CustomHeight(
                height: 10,
              ),
              latestOffers(context),
            ],
          ),
        ),
      ),
    ));
  }

  Widget latestOffers(BuildContext context) {
    return Column(
      children: [
        ...resturantData.map((e) => PopularResturantWidget(
              resturantModel: e,
            ))
      ],
    );
  }
}
