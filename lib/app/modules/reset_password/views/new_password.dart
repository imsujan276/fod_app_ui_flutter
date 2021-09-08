import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/login/views/login.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';
import 'package:get/get.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);
// ScreenUtil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(Constants.defaultPadding.sp * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LargeText(
                'New Password', isCentered: true,
                // fontSize: 28,
              ),
              SizedBox(
                height: 10.h,
              ),
              NormalText(
                'Please enter your email to receive a \n link to create a new password via email',
                isCentered: true,
                fontSize: 16.sp,
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomTextField(
                padding: Constants.defaultPadding,
                label: 'New Password'),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(  padding: Constants.defaultPadding,label: 'Confirm Password'),
              SizedBox(
                height: 40.h,
              ),
              CustomTextButton(
                
                  label: 'Next',
                  textColor: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {
                    Get.to(() => LoginView());
                  }),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
