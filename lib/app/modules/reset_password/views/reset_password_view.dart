import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/reset_password/views/otp_verification.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

// ScreenUtil
class ResetPasswordView extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('ResetPasswordView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(Constants.defaultPadding.sp * 2),
        child: Column(
          children: [
            LargeText(
              'Reset Password',
              // fontSize: 28,
            ),
            SizedBox(
              height: 10.sp,
            ),
            NormalText(
              'Please enter your email to receive a link\n to create a new password via email',
              isCentered: true,
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomTextField(
              label: 'Email ',
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextButton(
                label: 'Send',
                textColor: Theme.of(context).scaffoldBackgroundColor,
                onPressed: () {
                  Get.to(() => OtpVerification());
                }),
          ],
        ),
      ),
    ));
  }
}
