import 'package:flutter/material.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/three/views/three_view.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

import 'package:get/get.dart';

import '../controllers/four_controller.dart';

class FourView extends GetView<FourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('FourView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Constants.defaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LargeText(
                'Sign Up',
              ),
              SizedBox(
                height: 10,
              ),
              NormalText('Add you details to sign up'),
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
                label: 'Email',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Mobile No.',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Address',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Password',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Confirm Password',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextButton(
                  label: 'Sign Up',
                  textColor: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {}),
              SizedBox(
                height: 16,
              ),
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
                      onTap: () => Get.to(() => ThreeView()),
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
      ),
    ));
  }
}
