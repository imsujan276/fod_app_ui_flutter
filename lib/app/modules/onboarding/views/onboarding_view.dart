import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

// ScreenUtil
class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      splashData[controller.count.value]["image"].toString()),
                  SizedBox(
                    height: 40.h,
                  ),
                  DotWidget(selected: controller.count.value),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          LargeText(splashData[controller.count.value]["title"].toString()),
          SizedBox(
            height: 20.h,
          ),
          NormalText(splashData[controller.count.value]["text"].toString()),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.sp),
            child: Obx(() => CustomTextButton(
                label: controller.count.value == 2 ? 'Continue' : 'Next',
                onPressed: () {
                  controller.increment();
                })),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    ));
  }
}

class DotWidget extends StatelessWidget {
  const DotWidget({Key? key, required this.selected}) : super(key: key);
  final int selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          AnimatedContainer(
            duration: Duration(microseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            height: 10.h,
            width: 10.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: i == selected
                    ? Theme.of(context).primaryColor
                    : Colors.grey),
          ),
      ],
    );
  }
}
