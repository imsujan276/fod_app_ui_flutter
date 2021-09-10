import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart'; 

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      this.prefixIcon,
      this.height = 50,
      this.width = double.infinity,
      this.padding = 0})
      : super(key: key);
  final String label;
  final IconData? prefixIcon;
  final double height;
  final double width;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: padding),
      padding:EdgeInsets.symmetric(horizontal:  padding),
      alignment: Alignment.center,
      height: height.sp,
      width: width.h,
      decoration: BoxDecoration(
        color: grey2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        style: TextStyle(color:  grey),
        decoration: InputDecoration(
 
            border: InputBorder.none,
        
            prefixIcon: Icon(prefixIcon),
            hintText: label,
            hintStyle: TextStyle(
              fontSize: Theme.of(context).textTheme.body1!.fontSize,
              color: grey60,
            )),
      ),
    );
  }
}
