import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final double? fontSize;
  final bool isBold;
  final bool hasUnderline;
  final String text;
  final bool isCentered;
  final Color? color;
  final FontWeight fontWeight;
  const NormalText(
    this.text, {
    this.fontSize,
    this.isBold = false,
    this.hasUnderline = false,
    this.isCentered = false,
    this.color = Colors.grey,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: fontSize != null ? fontSize!.sp : null,
            fontWeight: isBold ? FontWeight.bold : fontWeight,
            decoration: hasUnderline ? TextDecoration.underline : null,
            color: color,
          ),
      textAlign: isCentered ? TextAlign.center : null,
    );
  }
}
