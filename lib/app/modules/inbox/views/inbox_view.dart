import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/notification/views/notification_view.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(
        //   title: Text('InboxView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(
                title: 'Inbox',
                onPressed: () {
                  Get.back();
                },
                isBold: false),
            CustomHeight(),
            for (int i = 0; i < 30; i++)
              ListTile(
                tileColor: i.isEven ? Colors.grey.withOpacity(.1) : null,
                leading: Dot(),
                minLeadingWidth: 5.sp,
                title: NormalText(
                  "MealMonkey Promotions",
                  fontSize: 20.sp,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NormalText(
                      '6th Aug',
                      fontSize: 14.sp,
                    ),
                    SizedBox(
                      height: 18.sp,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
                subtitle: NormalText('Lorem ipsum dolor sit amet. consectur'),
              )
          ],
        ),
      ),
    ));
  }
}
