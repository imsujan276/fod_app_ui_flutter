import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/data/models/menuItem.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/paymentdetail/views/paymentdetail_view.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';
import 'package:svg_icon/svg_icon.dart';

import '../controllers/more_options_controller.dart';

class MoreOptionsModel {
  String icon;
  String title;
  String length;
  MoreOptionsModel({required this.icon, required this.title, this.length = ''});
}

List<MoreOptionsModel> moreOptions = [
  MoreOptionsModel(icon: 'assets/icons/income.svg', title: 'Payment Details'),
  MoreOptionsModel(icon: 'assets/icons/shoppingbag.svg', title: 'My Orders'),
  MoreOptionsModel(
      icon: 'assets/icons/notification.svg',
      title: 'Notifications',
      length: '15'),
  MoreOptionsModel(
    icon: 'assets/icons/inbox.svg',
    title: 'Inbox',
  ),
  MoreOptionsModel(icon: 'assets/icons/info.svg', title: 'About Us '),
];

// ScreenUtil
class MoreOptionsView extends GetView<MoreOptionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('MoreOptionsView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(
              title: 'More',
              isBold: false,
            ),
            CustomHeight(),
            BodyPart(),
          ],
        ),
      ),
    ));
  }
}

class BodyPart extends StatelessWidget {
  const BodyPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ...moreOptions.map((e) => BodyItem(item: e)),
        BodyItem(
            item: moreOptions[0],
            ontap: () {
              Get.to(() => PaymentdetailView());
            }),
        BodyItem(
            item: moreOptions[1],
            ontap: () {
              Get.toNamed(Routes.CART);
            }),
        BodyItem(
            item: moreOptions[2],
            ontap: () {
              Get.toNamed(Routes.NOTIFICATION);
            }),
        BodyItem(
            item: moreOptions[3],
            ontap: () {
              Get.toNamed(Routes.INBOX);
            }),
        BodyItem(
            item: moreOptions[4],
            ontap: () {
              Get.toNamed(Routes.ABOUT);
            }),
      ],
    );
  }
}

class BodyItem extends StatelessWidget {
  const BodyItem({
    Key? key,
    required this.item,
    required this.ontap,
  }) : super(key: key);
  final MoreOptionsModel item;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: Constants.defaultmargin,
            vertical: Constants.defaultmargin / 2),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              margin: EdgeInsets.only(right: 20.sp),
              height: 80.h,
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: SvgIcon(
                        item.icon,
                        color: Colors.grey.shade700,
                        height: 20.sp,
                        width: 20.sp,
                      )),
                  SizedBox(
                    width: 10.sp,
                  ),
                  NormalText(item.title,
                      fontWeight: FontWeight.w600, color: Colors.grey.shade600),
                  Spacer(),
                  if (item.length != '')
                    CircleAvatar(
                      backgroundColor: Colors.red.shade400,
                      radius: 15.sp,
                      child: NormalText(
                        item.length.toString(),
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.grey.withOpacity(.1)),
            ),
            Positioned(
                right: 0,
                bottom: 25.h,
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  radius: 16.sp,
                  child: InkWell(
                    onTap: () => ontap(),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.shade400,
                      size: 16.sp,
                    ),
                  ),
                ))
          ],
        ));
  }
}
