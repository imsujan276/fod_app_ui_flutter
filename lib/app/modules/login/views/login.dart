import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/strings.dart';
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
        body: ResponsiveLayout(
      // tablet: Container(),
      mobile: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomHeight(),
            LargeText(
              Strings.login,
            ),
            CustomHeight(),
            NormalText(
              Strings.add_details + Strings.login.toLowerCase(),
              fontWeight: FontWeight.w600,
            ),
            CustomHeight(),
            CustomTextField(
              padding: Constants.defaultPadding,
              label: Strings.email_username,
            ),
            CustomHeight(),
            CustomTextField(
              padding: Constants.defaultPadding,
              label: Strings.password,
            ),
            CustomHeight(),
            CustomTextButton(
                label: Strings.login,
                textColor: Theme.of(context).scaffoldBackgroundColor,
                onPressed: () {
                  Get.toNamed('/onboarding');
                }),
            CustomHeight(),
            GestureDetector(
                onTap: () {
                  Get.to(() => ResetPasswordView());
                },
                child: NormalText(Strings.forgot_password)),
            CustomHeight(),
            NormalText(Strings.login_with),
            CustomHeight(),
            CustomTextButton(
              icon: FontAwesomeIcons.facebookF,
              label: Strings.facebook,
              onPressed: () {},
              btnColor: blue,
            ),
            CustomHeight(),
            CustomTextButton(
              icon: FontAwesomeIcons.googlePlusG,
              label: Strings.login_with_google,
              onPressed: () {},
              btnColor: red,
            ),
            CustomHeight(),
            RichText(
                text: TextSpan(
                    text: Strings.dont_have,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey),
                    children: [
                  WidgetSpan(
                      child: InkWell(
                    onTap: () => Get.off(() => SignupView()),
                    child: Text(
                      "  ${Strings.signup}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ))
                ])),
            CustomHeight(),
          ],
        ),
      ),
    ));
  }
}
