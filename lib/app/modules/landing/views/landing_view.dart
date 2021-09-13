import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/modules/login/views/login.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/signup/views/four_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/custom_paint/custom_paint.dart';
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
          flex: 1,
          child: Stack(
            // fit: StackFit.expand,
            children: [
              ///custom paint part
              Container(
                height: context.isLandscape ? 600.h : 400.h,
                width: 1.sw,
                child: CustomPaint(
                    size: Size(double.infinity, 350.h.toDouble()),
                    painter: RPSCustomPainter(
                      AppColors.PRIMARY_COLOR,
                    ),
                    child: Image.asset(
                      AppImages.background,
                      fit: BoxFit.fill,
                    )),
              ),
              // Container(
              //   height: 400.h,
              //   width: double.infinity,
              //   child: CustomPaint(
              //     size: Size(double.infinity, 400.h.toDouble()),
              //     painter: RPSCustomPainter(Color(0xfffc6011).withOpacity(.2)),
              //     child: Container(
              //       decoration: BoxDecoration(
              //         image: new DecorationImage(
              //             fit: BoxFit.cover,
              //             // colorFilter: ColorFilter.mode(
              //             //     Colors.black.withOpacity(0.8), BlendMode.dstATop),
              //             image: AssetImage(
              //               "assets/images/topimage.png",
              //             )),
              //       ),
              //     ),
              //   ),
              // ),

              // Container(color: Colors.grey[200]),

              ///drawing
              // if (context.isPortrait)
              //   Container(
              //     height: 400.h,
              //     width: 1.sw,
              //     child: Image.asset(AppImages.topImage, fit: BoxFit.fitWidth),
              //   ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 100.h,
                    alignment: !context.isPortrait
                        ? Alignment.center
                        : Alignment.bottomCenter,
                    child: Image.asset(
                      AppImages.logo,
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          flex: !context.isPortrait ? 2 : 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(),
              Image.asset(
                AppImages.meal,
              ),
              CustomSizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constants.defaultPadding * 2),
                child: NormalText(
                  Strings.landing_text,
                  isCentered: true,
                ),
              ),
              CustomSizedBox(flex: 2),
              CustomTextButton(
                  label: Strings.login,
                  onPressed: () {
                    Get.to(() => LoginView());
                  }),
              CustomHeight(),
              CustomOutlinedButton(
                  defaultPadding: Constants.defaultPadding,
                  label: Strings.create_an_account,
                  textColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    Get.to(() => SignupView());
                  }),
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
