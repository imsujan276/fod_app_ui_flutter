import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';
import 'package:get/get.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildAppBar(
                title: 'Change Address',
                isBold: false,
                shoppingicon: false,
                onPressed: () {
                  Get.back();
                }),
            CustomHeight(),
            Expanded(
              child: Container(
                  height: 300.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      AppImages.address,
                    ),
                  ))),
            ),
            CustomHeight(),
            Container(
              child: Column(
                children: [
                  CustomTextField(
                    padding: Constants.defaultPadding,
                    label: 'Search Address',
                    prefixIcon: Icons.search,
                  ),
                  CustomHeight(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Constants.defaultPadding),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(.3),
                          radius: 20.sp,
                          child: Icon(Icons.star,
                              color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          width: 20.sp,
                        ),
                        NormalText('Choose a saved place'),
                        Spacer(),
                        IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  CustomHeight(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ScreenUtil