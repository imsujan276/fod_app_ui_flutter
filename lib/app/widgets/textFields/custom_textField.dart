import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.label, this.prefixIcon})
      : super(key: key);
  final String label;
  final IconData? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:ScreenUtil
      alignment: Alignment.center,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16.0),
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
