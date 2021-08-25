import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

// ScreenUtil
/// custom raised/elevated button widget
class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColors.GREY,
    this.textColor = AppColors.BLACK,
  });

  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      child: ElevatedButton(
        child: NormalText(label),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor, // background
          onPrimary: textColor, // foreground/text
          onSurface: AppColors.GREY, // disabled
          textStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: Constants.defaultFontSize,
          ),
        ),
      ),
    );
  }
}

/// custom outlined button widget
class CustomOutlinedButton extends StatelessWidget {
  CustomOutlinedButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColors.GREY,
    this.textColor = AppColors.BLACK,
  });

  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: NormalText(label),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        primary: textColor, // foreground
        side: BorderSide(color: backgroundColor), // background
        onSurface: AppColors.GREY, // disabled
      ),
    );
  }
}

/// custom text button widget
class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {required this.label,
      required this.onPressed,
      this.textColor = Colors.white,
      this.borderColor = Colors.white,
      this.btnColor = AppColors.PRIMARY_COLOR,
      this.icon = Icons.clear});
  final Color borderColor;
  final VoidCallback onPressed;
  final String label;
  final Color textColor;
  final Color btnColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: 50.sp,
          alignment: Alignment.center,
          // padding: EdgeInsets.all(Constants.defaultPadding.sp),
          decoration: BoxDecoration(
              color: btnColor,
              // gradient: LinearGradient(
              //   colors: [
              //     // Color.fromRGBO(255, 143, 158, 1),
              //     // Colors.orange.withOpacity(.2)
              //   ],
              //   begin: Alignment.centerLeft,
              //   end: Alignment.centerRight,
              // ),

              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              boxShadow: [BoxShadow(color: borderColor, spreadRadius: 1)]),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != Icons.clear)
                Icon(
                  icon,
                  color: Colors.white,
                  size: 18.sp,
                ),
              SizedBox(width: 10.sp),
              NormalText(
                label,
                color: textColor,
                isBold: icon != Icons.clear ? false : true,
                fontSize: icon != Icons.clear ? 16.sp : 18.sp,
              ),
            ],
          )),
    );
  }
}
