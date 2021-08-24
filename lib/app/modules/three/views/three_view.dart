import 'package:flutter/material.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/four/views/four_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/three_controller.dart';

class ThreeView extends GetView<ThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(Constants.defaultPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LargeText(
              'Login',
            ),
            SizedBox(
              height: 10,
            ),
            NormalText('Add you details to log in'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Username',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              label: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextButton(
                label: 'Login',
                textColor: Theme.of(context).scaffoldBackgroundColor,
                onPressed: () {}),
            SizedBox(
              height: 16,
            ),
            NormalText('Forgot your password'),
            SizedBox(
              height: 30,
            ),
            NormalText('or Login With'),
            SizedBox(
              height: 16,
            ),
            CustomTextButton(
              icon: Icons.facebook,
              label: 'Facebook',
              onPressed: () {},
              btnColor: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextButton(
              icon: Icons.facebook,
              label: 'Login with Google',
              onPressed: () {},
              btnColor: Colors.red,
            ),
            SizedBox(
              height: 16,
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
                    onTap: () => Get.to(() => FourView()),
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
        ),
      ),
    ));
  }
}
