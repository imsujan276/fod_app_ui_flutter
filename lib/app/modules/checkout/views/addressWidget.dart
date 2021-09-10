import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';
import 'package:get/get.dart';

import 'changeAddress.dart';
// ScreenUtil
class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NormalText('Delivery Address'),
          Row(
            children: [
              Container(
                width: 250.w,
                child: NormalText('652 Nostrand Ave.,\n Brooklyn , NY 11216',
                    isBold: true, color: Colors.grey.shade600),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    Get.to(ChangeAddress());
                  },
                  child: NormalText(
                    "Change",
                    isBold: true,
                    color: Theme.of(context).primaryColor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
