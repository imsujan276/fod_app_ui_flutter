import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/login/views/three_view.dart';
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
      child: Container(
        height: 1.sh,
        padding: EdgeInsets.symmetric(vertical: Constants.defaultPadding * 2),
        child: SafeArea(
          child: Form(),
        ),
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
      children: [
        LargeText(
          'Sign Up',
        ),
        SizedBox(
          height: 10.h,
        ),
        NormalText(
          'Add you details to sign up',
          fontWeight: FontWeight.w800,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          label: 'Email or Username',
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextField(
          label: 'Email',
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          label: 'Mobile No.',
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          label: 'Address',
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
        CustomTextField(
          label: 'Confirm Password',
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextButton(
            label: 'Sign Up',
            textColor: Theme.of(context).scaffoldBackgroundColor,
            onPressed: () {
              Get.to(() => LoginView());
            }),
        Spacer(),
        RichText(
            text: TextSpan(
                text: 'Already have an Account? ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
                children: [
              WidgetSpan(
                  child: InkWell(
                onTap: () => Get.to(() => LoginView()),
                child: Text(
                  'Login',
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
