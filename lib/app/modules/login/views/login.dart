import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
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
      child: ResponsiveLayout(
        tablet: Container(),
        mobile: Container(
          height: 1.sh,
          padding:
              EdgeInsets.symmetric(vertical: Constants.defaultPadding.sp * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomHeight(),
              LargeText(
                'Login',
              ),
              CustomHeight(),
              NormalText(
                'Add you details to log in',
                fontWeight: FontWeight.w600,
              ),
              CustomHeight(),
              CustomTextField(
                padding: Constants.defaultPadding,
                label: 'Email or Username',
              ),
              CustomHeight(),
              CustomTextField(
                padding: Constants.defaultPadding,
                label: 'Password',
              ),
              CustomHeight(),
              CustomTextButton(
                  label: 'Login',
                  textColor: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {
                    Get.toNamed('/onboarding');
                  }),
              CustomHeight(),
              GestureDetector(
                  onTap: () {
                    Get.to(() => ResetPasswordView());
                  },
                  child: NormalText('Forgot your password')),
              CustomHeight(),
              NormalText('or Login With'),
              CustomHeight(),
              CustomTextButton(
                icon: FontAwesomeIcons.facebookF,
                label: 'Facebook',
                onPressed: () {},
                btnColor: blue,
              ),
              CustomHeight(),
              CustomTextButton(
                icon: FontAwesomeIcons.googlePlusG,
                label: 'Login with Google',
                onPressed: () {},
                btnColor: red,
              ),
              Spacer(),
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
                      onTap: () => Get.off(() => SignupView()),
                      child: Text(
                        'Sign up',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ))
                  ])),
            ],
          ),
        ),
      ),
    ));
  }
}
