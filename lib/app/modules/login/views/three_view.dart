import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/onboarding/views/onboarding_view.dart';
import 'package:food_delivery/app/modules/reset_password/views/reset_password_view.dart';
import 'package:food_delivery/app/modules/signup/views/four_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
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
        child: Padding(
          padding: EdgeInsets.all(Constants.defaultPadding.sp * 2),
          child: Column(
            children: [
              LargeText(
                'Login',
              ),
              SizedBox(
                height: 10.h,
              ),
              NormalText('Add you details to log in'),
              SizedBox(height: 20.h),
              CustomTextField(
                label: 'Email or Username',
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                label: 'Password',
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextButton(
                  label: 'Login',
                  textColor: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {
                    Get.toNamed('/onboarding');
                  }),
              SizedBox(
                height: 16.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => ResetPasswordView());
                  },
                  child: NormalText('Forgot your password')),
              SizedBox(
                height: 20.h,
              ),
              NormalText('or Login With'),
              SizedBox(
                height: 20.h,
              ),
              CustomTextButton(
                icon: FontAwesomeIcons.facebookF,
                label: 'Facebook',
                onPressed: () {},
                btnColor: Colors.blue,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextButton(
                icon: FontAwesomeIcons.googlePlusG,
                label: 'Login with Google',
                onPressed: () {},
                btnColor: Colors.red,
              ),
              SizedBox(
                height: 20.h,
              ),
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
    ));
  }
}
