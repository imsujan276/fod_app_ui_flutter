import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/modules/reset_password/views/new_password.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:get/get.dart';

// ScreenUtil
class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin1FocusNode;
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();

    ///initiating focusNode for formFields
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  TextStyle otptextStyle = TextStyle(fontSize: 24, color: Colors.grey[800]);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   alignment: Alignment(0.00, 0.50),
              //   decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(.2),
              //       borderRadius: BorderRadius.circular(10)),
              //   width: 60.h,
              //   height: 60.h,
              //   child: TextFormField(
              //     autofocus: true,
              //     obscureText: true,
              //     obscuringCharacter: '*',
              //     style: otptextStyle,
              //     keyboardType: TextInputType.number,
              //     textAlign: TextAlign.center,
              //     decoration: InputDecoration(border: InputBorder.none),
              //     onChanged: (value) {
              //       nextField(value, pin2FocusNode);
              //     },
              //   ),
              // ),
              // Container(
              //   alignment: Alignment(0.00, 0.50),
              //   decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(.2),
              //       borderRadius: BorderRadius.circular(10)),
              //   width: 60.h,
              //   height: 60.h,
              //   child: TextFormField(
              //     focusNode: pin2FocusNode,
              //     obscureText: true,
              //     obscuringCharacter: '*',
              //     style: otptextStyle,
              //     keyboardType: TextInputType.number,
              //     textAlign: TextAlign.center,
              //     decoration: InputDecoration(border: InputBorder.none),
              //     onChanged: (value) => nextField(value, pin3FocusNode),
              //   ),
              // ),
              // Container(
              //   alignment: Alignment(0.00, 0.50),
              //   decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(.2),
              //       borderRadius: BorderRadius.circular(10)),
              //   width: 60.h,
              //   height: 60.h,
              //   child: TextFormField(
              //     focusNode: pin3FocusNode,
              //     obscureText: true,
              //     obscuringCharacter: '*',
              //     style: otptextStyle,
              //     keyboardType: TextInputType.number,
              //     textAlign: TextAlign.center,
              //     decoration: InputDecoration(border: InputBorder.none),
              //     onChanged: (value) => nextField(value, pin4FocusNode),
              //   ),
              // ),
              PinWidget(
                  currentFocus: pin1FocusNode,
                  nextFocusNode: pin2FocusNode,
                  otptextStyle: otptextStyle),
              PinWidget(
                  currentFocus: pin2FocusNode,
                  nextFocusNode: pin3FocusNode,
                  otptextStyle: otptextStyle),
              PinWidget(
                  currentFocus: pin3FocusNode,
                  nextFocusNode: pin4FocusNode,
                  otptextStyle: otptextStyle),
              PinWidget(
                  currentFocus: pin4FocusNode,
                  nextFocusNode: pin4FocusNode,
                  otptextStyle: otptextStyle),
            ],
          ),
          SizedBox(height: 30.h),
          // SizedBox(
          //     height: 40.h,
          //   ),
          CustomTextButton(
              label: 'Next',
              textColor: Theme.of(context).scaffoldBackgroundColor,
              onPressed: () {
                Get.to(() => NewPassword());
              }),
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
    );
  }
}

class PinWidget extends StatelessWidget {
  const PinWidget({
    Key? key,
    required this.nextFocusNode,
    required this.otptextStyle,
    required this.currentFocus,
  }) : super(key: key);
  final FocusNode currentFocus;
  final FocusNode nextFocusNode;
  final TextStyle otptextStyle;
  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.00, 0.50),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(10)),
      width: 60.h,
      height: 60.h,
      child: TextFormField(
        focusNode: currentFocus,
        obscureText: true,
        obscuringCharacter: '*',
        style: otptextStyle,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: "",
        ),
        onChanged: (value) {
          if (value.length == 1) {
            nextField(value, nextFocusNode);
            if (currentFocus == nextFocusNode) nextFocusNode.unfocus();
            // Then you need to check is the code is correct or not
          }
        },
      ),
    );
  }
}
