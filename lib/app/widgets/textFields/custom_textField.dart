import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      this.prefixIcon,
      this.height = 50,
      this.width = double.infinity})
      : super(key: key);
  final String label;
  final IconData? prefixIcon;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      // height:ScreenUtil
      alignment: Alignment.center,
      height: height.h,
      width: width.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            // fillColor: Colors.grey.withOpacity(.2),
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(30),
            // ),
            prefixIcon: Container(
              child: Icon(prefixIcon),
            ),
            hintText: label,
            hintStyle: TextStyle(
              fontSize: Theme.of(context).textTheme.body1!.fontSize,
              color: Colors.grey.withOpacity(.8),
            )),
      ),
    );
  }
}
