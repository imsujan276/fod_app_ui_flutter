import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/bottomsheet/customBottomsheet.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/textFields/custom_textField.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/paymentdetail_controller.dart';

// ScreenUtil
class PaymentdetailView extends GetView<PaymentdetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('PaymentdetailView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(
                isBold: false,
                title: 'Payment Details',
                onPressed: () {
                  Get.back();
                }),
            CustomHeight(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
              child: LargeText(
                'Customize your payment method',
                fontSize: 18.sp,
                color: Colors.grey.shade700,
              ),
            ),
            CustomHeight(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
              child: Divider(),
            ),
            CustomHeight(),
            Container(
              alignment: Alignment.center,
              // height: 200.h,
              decoration:
                  BoxDecoration(color: Colors.grey.shade100, boxShadow: [
                BoxShadow(
                  offset: Offset(10, 20),
                  color: Colors.grey.shade400,
                  blurRadius: 20.sp,
                  // spreadRadius: 10.sp,
                )
              ]),
              padding: EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding * 2,
                  vertical: Constants.defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeight(
                    height: 10,
                  ),
                  Row(
                    children: [
                      NormalText(
                        'Cash/Card on delivery',
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      Icon(
                        Icons.check,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/vista.png',
                        height: 30.h,
                      ),
                      NormalText(
                        '**** **** **** 2187',
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      CustomOutlinedButton(
                        label: 'DeleteCard',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  CustomHeight(
                    height: 10,
                  ),
                  Divider(),
                  CustomHeight(
                    height: 10,
                  ),
                  NormalText(
                    'Other methods',
                    isBold: true,
                    color: Colors.grey.shade600,
                  ),
                  CustomHeight(),
                ],
              ),
            ),
            CustomHeight(
              height: 40,
            ),
            Container(
              height: 60.h,
              child: CustomTextButton(
                  icon: Icons.add,
                  label: 'Add Another Credit/Debit Card',
                  onPressed: () {
                    addPayment(context);
                  }),
            )
          ],
        ),
      ),
    )

        //  Center(
        //   child: Text(
        //     'PaymentdetailView is working',
        //     style: TextStyle(fontSize: 20),
        //   ),
        // ),
        );
  }
}

addPayment(context) {
  return customBottomSheet(
    context,
    Container(
      padding: EdgeInsets.symmetric(
          horizontal: Constants.defaultPadding * 2,
          vertical: Constants.defaultPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomHeight(),
          Row(
            children: [
              NormalText(
                'Add Credit/Debit Card ',
                isBold: true,
                color: Colors.grey.shade600,
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.close,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          CustomHeight(),
          Divider(),
          CustomHeight(),
          CustomTextField(height: 60.h, label: 'Card Number'),
          CustomHeight(),
          Row(
            children: [
              NormalText(
                'Expiry',
                color: Colors.grey.shade600,
              ),
              Spacer(
                flex: 2,
              ),
              CustomTextField(height: 60.h, width: 150.h, label: 'MM'),
              Spacer(flex: 1),
              CustomTextField(height: 60.h, width: 150.h, label: 'HH'),
            ],
          ),
          CustomHeight(),
          CustomTextField(height: 60.h, label: 'Security Code'),
          CustomHeight(),
          CustomTextField(height: 60.h, label: 'First Name'),
          CustomHeight(),
          CustomTextField(height: 60.h, label: 'Last  Name'),
          CustomHeight(),
          Row(
            children: [
              NormalText(
                'You can remove this card',
                color: Colors.grey.shade600,
              ),
              Spacer(),
              Switch(value: false, onChanged: (v) {})
            ],
          ),
          CustomHeight(),
          CustomTextButton(
              label: 'Add card', onPressed: () {}, icon: Icons.add),
          CustomHeight(),
        ],
      ),
    ),
  );
}
