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
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
            height: .5.sh,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Container(
                //   // height: 360.h,
                //   child: CustomPaint(
                //     size: Size(double.infinity, 360.h.toDouble()),
                //     painter: RPSCustomPainter(Color(0xFFBDBDBD)),
                //   ),
                // ),
                // Container(
                //   height: 340.h,
                //   child: CustomPaint(
                //     size: Size(double.infinity, 340.sp.toDouble()),
                //     painter: RPSCustomPainter(Color(0xfffc6011).withOpacity(.2)),
                //     child: Container(
                //       decoration: BoxDecoration(
                //         image: new DecorationImage(
                //           fit: BoxFit.fill,
                //           colorFilter: ColorFilter.mode(
                //               Colors.black.withOpacity(0.8), BlendMode.dstATop),
                //           image: new AssetImage(
                //             'assets/images/topimage.png',
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(color:Colors.grey[200])   ,
                Container(
                    height: 400.h,
                    width: double.infinity,
                    child: Image.asset("assets/images/topimage.png",
                        fit: BoxFit.fill)),
                Container(
                    height: 50.h,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/images/logo.png",
                    )),
              ],
            )),
        Container(
          height: .5.sh,
          padding:
              EdgeInsets.symmetric(horizontal: Constants.defaultPadding.sp * 4),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Image.asset("assets/images/Meal.png"),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: NormalText(
                  'Discover the best foods from over 1,000 resturants and fast delivery to your doorstep',
                  isCentered: true,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextButton(
                  label: 'Login',
                  onPressed: () {
                    Get.to(() => LoginView());
                  }),
              SizedBox(
                height: 20.h,
              ),
              CustomTextButton(
                  btnColor: Colors.white,
                  borderColor: Color(0xfffc6011),
                  label: 'Create an Account',
                  textColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    Get.to(() => SignupView());
                  }),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
