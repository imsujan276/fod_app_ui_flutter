import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationModel {
  String notification;
  String date;
  bool active;
  NotificationModel(
      {required this.notification, required this.date, this.active = true});
}

List<NotificationModel> data = [
  NotificationModel(notification: 'Order has been placed', date: 'Now'),
  NotificationModel(notification: 'Order has been delivered', date: '1 h ago'),
  NotificationModel(notification: 'Order has been picked up', date: '3 h ago'),
  NotificationModel(
      notification: 'Order has been picked up', date: '3 h ago', active: false),
  NotificationModel(
      notification: 'Order has been picked up', date: '3 h ago', active: false),
  NotificationModel(notification: 'Order has been picked up', date: '3 h ago'),
];

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('NotificationView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildAppBar(
                onPressed: () {
                  Get.back();
                },
                title: 'Notifcations',
                isBold: false),
            ...data.map(
              (e) => OrderItem(notification: e),
            )
          ],
        ),
      ),
    )
        // Center(
        //   child: Text(
        //     'NotificationView is working',
        //     style: TextStyle(fontSize: 20),
        //   ),
        // ),
        );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.notification,
  }) : super(key: key);
  final NotificationModel notification;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: !notification.active ? Colors.grey[200] : null,
        margin: EdgeInsets.only(bottom: 1),
        child: Column(
          children: [
            ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding,
                ),
                leading: Dot(),
                title: Text(
                  notification.notification,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                  // fontSize: 18.sp,
                ),
                subtitle: NormalText(
                  notification.date,
                  fontSize: 18.sp,
                )),
            if (notification.active)
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
                color: Colors.grey.shade600,
                height: .1,
              )
          ],
        ));
  }
}

class Dot extends StatelessWidget {
  const Dot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Theme.of(context).primaryColor),
      height: 16.h,
      width: 16.h,
    );
  }
}
