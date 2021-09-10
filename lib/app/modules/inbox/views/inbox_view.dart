import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/notification/views/notification_view.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';

import 'package:get/get.dart';

import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(leading: IconButton(
        //   onPressed: (){
        //     Get.back();
        //   },
        //   icon: Icon(Icons.arrow_back_ios,color: grey60,)),
        //   title: Text('Inbox',style: TextStyle(color:grey60),),
        //   centerTitle: false,
        //   backgroundColor: AppColors.WHITE,
        //   elevation: 0,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(
                title:Strings.inbox,//'Inbox',
                onPressed: () {
                  Get.back();
                },
                isBold: false),
             for (int i = 0; i < 30; i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                    vertical: Constants.defaultPadding / 3,
                    horizontal: Constants.defaultPadding),
                tileColor: i.isEven ? Colors.grey.withOpacity(.1) : null,
                leading: Dot(),
                minLeadingWidth: 5.sp,
                title: LargeText(
                  "MealMonkey Promotions",
                  isBold: false,
                  fontSize: 16.sp,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NormalText(
                      '6th Aug',
                    ),
                    Spacer(),
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
