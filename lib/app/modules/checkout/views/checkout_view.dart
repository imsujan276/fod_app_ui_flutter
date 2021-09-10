import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/modules/menupage/views/menupage_view.dart';
import 'package:food_delivery/app/modules/paymentdetail/views/paymentdetail_view.dart'; 
import 'package:food_delivery/app/widgets/bottomsheet/customBottomsheet.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/checkout_controller.dart';
import 'changeAddress.dart';

class CheckoutView extends GetView<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey.withOpacity(.1),
        // appBar: AppBar(
        //   title: Text('CheckoutView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(
                title: Strings.checkout,//'Checkout',
                isBold: false,
                onPressed: () {
                  Get.back();
                },
                shoppingicon: false),
            DeliveryAddress(),
            CustomHeight(),
            Payment(),
            CustomHeight(),
            CustomHeight(),
            TotalPriceWidget(),
            CustomHeight(),
            CustomTextButton(
                label: 'Send order',
                onPressed: () {
                  successorFail(context);
                }),
            CustomHeight(),
          ],
        ),
      ),
    ));
  }
}

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Column(
        children: [
          TotalItems(text: 'Sub Total', price: '\$12'),
          TotalItems(text: 'Delivery Cost', price: '\$89'),
          TotalItems(text: 'Discount', price: '\$10'),
          Divider(),
          TotalItems(text: 'Total', price: '\$1244'),
          CustomHeight(),
        ],
      ),
    );
  }
}

successorFail(context) {
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
            Row(
              children: [
                Spacer(),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close, color: Colors.grey))
              ],
            ),
            Image.asset(AppImages.success),
            LargeText('Thank You ! '),
            LargeText(
              'for your order',
              isBold: false,
            ),
            CustomHeight(),
            Padding(
              padding:   EdgeInsets.symmetric(horizontal:Constants.defaultPadding),
              child: NormalText(
                  'Your order is now being processed. We  will let you know once the order is picked from th outlet. Check'),
            ),
            CustomHeight(),
            CustomTextButton(
              onPressed: () {},
              label: 'Track My Order',
            ),
            CustomHeight(),
            InkWell(
                onTap: () {
                  Get.back();

                  Get.to (()=>MenupageView());
                },
                child: LargeText('Back To Home',
                    fontSize: 20.sp, color:grey60)),
            CustomHeight(),
          ],
        ),
      ));
}

class TotalItems extends StatelessWidget {
  const TotalItems({
    Key? key,
    required this.price,
    required this.text,
  }) : super(key: key);
  final String price;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          NormalText(
            text,
          ), // isBold: true, color: Colors.grey.shade600),
          Spacer(),
          NormalText(price, isBold: true, color: Colors.grey.shade600)
        ],
      ),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              NormalText(
                'Payment Method',
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    addPayment(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: Theme.of(context).primaryColor),
                      SizedBox(
                        width: 10.sp,
                      ),
                      NormalText(
                        'Add Card',
                        isBold: true,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  )),
            ],
          ),
          PaymentOptions(text: 'Cash on delivery', value: '1'),
          PaymentOptions(
              text: '**** **** **** 217',
              value: '2',
              image: 'assets/images/vista.png'),
          PaymentOptions(
            text: 'johndoe@email.com',
            value: '3',
            image: 'assets/images/paypal.png',
          ),
        ],
      ),
    );
  }
}

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({
    Key? key,
    required this.text,
    required this.value,
    this.image = '',
  }) : super(key: key);
  final String image;
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Constants.defaultmargin),
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: Colors.grey.withOpacity(.1)),
      child: Row(
        children: [
          if (image != '') Image.asset(image),
          NormalText(text),
          Spacer(),
          Radio(
              fillColor: MaterialStateColor.resolveWith(
                  (states) => Theme.of(context).primaryColor),
              value: false,
              groupValue: 'payment',
              onChanged: (v) {}),
        ],
      ),
    );
  }
}

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
