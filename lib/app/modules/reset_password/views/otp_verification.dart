import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';
import 'package:get/get.dart';

import 'new_password.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);
// ScreenUtil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(Constants.defaultPadding.sp * 2),
        child: Column(
          children: [
            LargeText(
              'We have sent an OTP to\n your Mobile', isCentered: true,
              // fontSize: 28,
            ),
            SizedBox(
              height: 10.h,
            ),
            NormalText(
              'Please check your mobile number 081******21 \ncontinue to reset your password',
              isCentered: true,
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpPinWidget(),
                OtpPinWidget(),
                OtpPinWidget(),
                OtpPinWidget()
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextButton(
                  label: 'Next',
                  textColor: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {
                    Get.to(() => NewPassword());
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            RichText(
                text: TextSpan(
                    text: "Didn't Receive?",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey),
                    children: [
                  WidgetSpan(
                      child: InkWell(
                    // onTap: () => Get.to(() => ThreeView()),
                    child: Text(
                      'Click Here',
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
    ));
  }
}

class OtpPinWidget extends StatelessWidget {
  const OtpPinWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.h,
      margin: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
          // showCursor: false,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              counterText: "",
              contentPadding: EdgeInsets.only(top: 5),
              prefix: SizedBox(width: 20),
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey),
              hintText: '*',
              border: InputBorder.none)),
    );
  }
}
