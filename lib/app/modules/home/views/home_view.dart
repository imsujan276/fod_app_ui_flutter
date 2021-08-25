import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/login/views/three_view.dart';
import 'package:food_delivery/app/modules/signup/views/four_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/custom_paint/custom_paint.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// ScreenUtil
class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: Container(
            child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: 400.sp,
                  child: CustomPaint(
                    size: Size(double.infinity, 400.sp.toDouble()),
                    painter: RPSCustomPainter(Color(0xFFBDBDBD)),
                  ),
                ),
                Container(
                  height: 340.sp,
                  child: CustomPaint(
                    size: Size(
                        double.infinity,
                        340
                            .sp
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter:
                        RPSCustomPainter(Color(0xfffc6011).withOpacity(.2)),
                    child: Container(
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                          image: new AssetImage(
                            'assets/images/shape.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100.sp,
                )),
          ],
        )),
      ),
      SizedBox(
        height: 10,
      ),
      Image.asset("assets/images/Meal.png"),
      Container(
        padding: EdgeInsets.all(Constants.defaultPadding.sp * 4),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NormalText(
              'Discover the best foods from over 1,000 \nresturants and fast delivery to your\n doorstep',
              color: Colors.grey,
              isCentered: true,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextButton(
                label: 'Login',
                onPressed: () {
                  Get.to(() => LoginView());
                }),
            SizedBox(
              height: 15,
            ),
            CustomTextButton(
                btnColor: Colors.white,
                borderColor: Color(0xfffc6011),
                label: 'Create an Account',
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Get.to(() => SignupView());
                })
          ],
        ),
      )
    ]));
  }
}
