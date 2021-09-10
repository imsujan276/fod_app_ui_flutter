import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/modules/login/views/login.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

import 'package:get/get.dart';

import '../controllers/four_controller.dart';

// ScreenUtil
class SignupView extends GetView<FourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Form(),
      ),
    ));
  }
}

class Form extends StatelessWidget {
  const Form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormWidget();
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [    SizedBox(
          height: 20.h,
        ),
        LargeText(
          'Sign Up',
        ),
        SizedBox(
          height: 10.h,
        ),
        NormalText(
          Strings.add_details + Strings.signup.toLowerCase(),
          fontWeight: FontWeight.w800,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          padding: Constants.defaultPadding,
          label: Strings.username,
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextField(
          padding: Constants.defaultPadding,
          label: Strings.email,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          padding: Constants.defaultPadding,
          label: Strings.mobile_no,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          padding: Constants.defaultPadding,
          label: Strings.address,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          padding: Constants.defaultPadding,
          label: Strings.password,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          padding: Constants.defaultPadding,
          label: Strings.confirm_pass,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextButton(
            label: Strings.signup,
            textColor: Theme.of(context).scaffoldBackgroundColor,
            onPressed: () {
              Get.to(() => LoginView());
            }),
        CustomHeight(),
        RichText(
            text: TextSpan(
                text: '${Strings.already_have} ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
                children: [
              WidgetSpan(
                  child: InkWell(
                onTap: () => Get.to(() => LoginView()),
                child: Text(
                  Strings.login,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
              ))
            ]))
      ],
    );
  }
}
