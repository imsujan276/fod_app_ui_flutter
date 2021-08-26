import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart'; 
import 'package:food_delivery/app/widgets/texts/texts.dart'; 
import 'otpForm.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
            OtpForm(),
          ],
        ),
      ),
    ));
  }
}
