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
    this.defaultPadding = 0,
  });

  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double defaultPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.sp,
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: OutlinedButton(
        child: Text(
          label,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          primary: textColor, // foreground

          side: BorderSide(
            color: AppColors.PRIMARY_COLOR,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          // background
          onSurface: AppColors.PRIMARY_COLOR, // disabled
        ),
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
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: 50.sp,
          margin: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: btnColor,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0.sp),
              ),
              boxShadow: [BoxShadow(color: borderColor, spreadRadius: 1)]),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != Icons.clear)
                Icon(
                  icon,
                  color: Colors.white,
                  size: 18.sp,
                ),
              SizedBox(width: 10.sp),
              Flexible(
                child: NormalText(
                  label,
                  color: textColor,
                  // isBold: icon != Icons.clear ? false : true,
                  fontSize: icon != Icons.clear ? 16.sp : 18.sp,
                ),
              ),
            ],
          )),
    );
  }
}
