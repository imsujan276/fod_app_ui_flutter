import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/modules/login/views/three_view.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/signup/views/four_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// ScreenUtil
class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
      mobile: Column(children: [
        Expanded(
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
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(),
              Image.asset(
                "assets/images/Meal.png",
              ),
              CustomSizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.sp),
                child: NormalText(
                  'Discover the best foods from over 1,000 resturants and fast delivery to your doorstep',
                  isCentered: true,
                ),
              ),
              CustomSizedBox(flex: 2),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.sp),
                child: CustomTextButton(
                    label: 'Login',
                    onPressed: () {
                      Get.to(() => LoginView());
                    }),
              ),
              CustomHeight(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.sp),
                child: CustomTextButton(
                    btnColor: Colors.white,
                    borderColor: Color(0xfffc6011),
                    label: 'Create an Account',
                    textColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      Get.to(() => SignupView());
                    }),
              ),
              CustomSizedBox(),
            ],
          ),
        )
      ]),
    ));
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    Key? key,
    this.flex = 1,
  }) : super(key: key);
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 16.h,
      ),
    );
  }
}
