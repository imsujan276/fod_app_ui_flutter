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
            child: Stack(
      children: [
        PageView.builder(
            controller: controller.pageController,
            // physics: NeverScrollableScrollPhysics(),
            onPageChanged: (i) {
              controller.onChanged(i);
            },
            itemCount: splashData.length,
            itemBuilder: (_, i) {
              return Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Flexible(
                    child: Image.asset(splashData[i]["image"].toString(),
                        height: 300.h, width: double.infinity),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  LargeText(
                    splashData[i]["title"].toString(),
                    isCentered: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  NormalText(
                    splashData[i]["text"].toString(),
                    isCentered: true,
                  ),
                ],
              );
            }),
        Container(
            alignment: Alignment(0.00, 0.0),
            child: Obx(
              () => DotWidget(
                selected: controller.count.value,
              ),
            )),
        Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 40.sp, vertical: 20),
            child: CustomTextButton(
                label: controller.count.value == 2 ? 'Continue' : 'Next',
                onPressed: () {
                  controller.pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                })),
      ],
    )));
  }
}

class DotWidget extends StatelessWidget {
  const DotWidget({Key? key, required this.selected}) : super(key: key);
  final int selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          splashData.length,
          (index) => Container(
              margin: const EdgeInsets.all(4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                  color: selected == index
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                  shape: BoxShape.circle))),
    );
  }
}
