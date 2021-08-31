import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
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
            child: ResponsiveLayout(
      mobile: Stack(
        children: [
          OnboardingScreens(),
          DotPart(controller: controller),
          ButtonPart(
            controller: controller,
          ),
        ],
      ),
    )));
  }
}

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();
    return Container(
      child: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (i) {
            controller.onChanged(i);
          },
          itemCount: splashData.length,
          itemBuilder: (_, i) {
            ///for portrait mode
            if (context.isPortrait)
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      splashData[i]["image"].toString(),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
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

            ///for landscape mode
            else
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      splashData[i]["image"].toString(),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  )
                ],
              );
          }),
    );
  }
}

class ButtonPart extends StatelessWidget {
  const ButtonPart({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OnboardingController controller;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 40.sp, vertical: 15.h),
          child: CustomTextButton(
              label: controller.count.value == 2 ? 'Continue' : 'Next',
              onPressed: () {
                if (controller.count.value == 2)
                  Get.toNamed('/menupage');
                else
                  controller.pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
              })),
    );
  }
}

class DotPart extends StatelessWidget {
  const DotPart({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 85.sp),
        child: Obx(
          () => DotWidget(
            selected: controller.count.value,
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
