import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

// ScreenUtil
class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.onPressed,
    required this.image,
  }) : super(key: key);
  final String image;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        margin: EdgeInsets.only(bottom: 30.sp),
        alignment: Alignment.bottomCenter,
        height: 200.h,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding,
              vertical: Constants.defaultPadding),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.025),
              ],
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LargeText(
                'French Apple Pie',
                fontSize: 18.sp,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              Row(children: [
                Icon(
                  Icons.star,
                  color: Theme.of(context).primaryColor,
                ),
                RichText(
                    text: TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  children: [
                    TextSpan(
                        text: '4.6 ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    TextSpan(
                      text: 'Minute by tuk Tuk',
                    ),
                    WidgetSpan(child: dot(context)),
                    TextSpan(text: 'Dessert')
                  ],
                ))
              ])
            ],
          ),
        ),
      ),
    );
  }
}

Widget dot(context) {
  return Container(
    margin: EdgeInsets.all(5),
    alignment: Alignment.center,
    height: 2.h,
    width: 2.h,
    decoration: BoxDecoration(
        shape: BoxShape.circle, color: Theme.of(context).primaryColor),
  );
}
