import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';
import 'package:food_delivery/app/modules/onboarding/views/onboarding_view.dart';
import 'package:food_delivery/app/modules/reset_password/views/reset_password_view.dart';
import 'package:food_delivery/app/modules/signup/views/four_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/three_controller.dart';

// ScreenUtil
class LoginView extends GetView<ThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: ResponsiveLayout(
          mobile: Container(
            height: ScreenUtil.defaultSize.height,
            padding: EdgeInsets.all(Constants.defaultPadding.sp * 2),
            child: Column(
              children: [
                LargeText(
                  'Login',
                ),
                CustomSizedBox(),
                NormalText(
                  'Add you details to log in',
                  fontWeight: FontWeight.w600,
                ),
                CustomSizedBox(),
                CustomTextField(
                  label: 'Email or Username',
                ),
                CustomSizedBox(),
                CustomTextField(
                  label: 'Password',
                ),
                CustomSizedBox(),
                CustomTextButton(
                    label: 'Login',
                    textColor: Theme.of(context).scaffoldBackgroundColor,
                    onPressed: () {
                      Get.toNamed('/onboarding');
                    }),
                CustomSizedBox(),
                GestureDetector(
                    onTap: () {
                      Get.to(() => ResetPasswordView());
                    },
                    child: NormalText('Forgot your password')),
                CustomSizedBox(),
                NormalText('or Login With'),
                CustomSizedBox(),
                CustomTextButton(
                  icon: FontAwesomeIcons.facebookF,
                  label: 'Facebook',
                  onPressed: () {},
                  btnColor: Colors.blue,
                ),
                CustomSizedBox(),
                CustomTextButton(
                  icon: FontAwesomeIcons.googlePlusG,
                  label: 'Login with Google',
                  onPressed: () {},
                  btnColor: Colors.red,
                ),
                CustomSizedBox(),
                RichText(
                    text: TextSpan(
                        text: "Don't have an Account? ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.grey),
                        children: [
                      WidgetSpan(
                          child: InkWell(
                        onTap: () => Get.to(() => SignupView()),
                        child: Text(
                          'Sign up',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                      ))
                    ]))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
