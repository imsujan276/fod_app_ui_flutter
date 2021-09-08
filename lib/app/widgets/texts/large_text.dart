import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/app/constants/app_colors.dart';

class LargeText extends StatelessWidget {
  final double? fontSize;
  final bool isBold;
  final bool hasUnderline;
  final String text;
  final bool isCentered;
  final Color color;
  const LargeText(
    this.text, {
    this.fontSize,
    this.isBold = true,
    this.hasUnderline = false,
    this.isCentered = false,
    this.color = AppColors.GREY,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headline3!.copyWith(
            fontSize: fontSize != null ? fontSize!.sp : null,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: color,
            decoration: hasUnderline ? TextDecoration.underline : null,
          ),
      textAlign: isCentered ? TextAlign.center : null,
    );
  }
}
