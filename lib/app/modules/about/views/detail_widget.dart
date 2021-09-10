import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/notification/views/notification_view.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

class AboutUsDetails extends StatelessWidget {
  const AboutUsDetails({Key? key, this.details}) : super(key: key);
  final details;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Constants.defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Dot(),
          SizedBox(
            width: 10.sp,
          ),
          Expanded(
            child: NormalText(details),
          )
        ],
      ),
    );
  }
}
