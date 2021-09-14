import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(
                title: Strings.order,
                isBold: false,
                onPressed: () {
                  Get.back();
                },
                shoppingicon: false),
            CustomHeight(
              height: 10,
            ),
            TopWidget(),
            CustomHeight(
              height: 40,
            ),
            OrderWidget(),
            CustomHeight(
              height: 30,
            ),
            AddDeliveryNote(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
              child: Divider(),
            ),
            CustomHeight(
              height: 10,
            ),
            CartTotals(),
            CustomHeight(
              height: 30,
            ),
            CustomTextButton(
                label: Strings.checkout, //'Checkout',
                onPressed: () {
                  Get.toNamed('\checkout');
                }),
            CustomHeight(),
          ],
        ),
      ),
    ));
  }
}

class CartTotals extends StatelessWidget {
  const CartTotals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: Row(
            children: [
              LargeText(
                'Sub total',
                color: Colors.grey.shade700,
                fontSize: Constants.defaultFontSize,
                isBold: true,
              ),
              Spacer(),
              LargeText(
                '\$ 68',
                color: Theme.of(context).primaryColor,
                fontSize: Constants.defaultFontSize,
                isBold: true,
              ),
            ],
          ),
        ),
        CustomHeight(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: Row(
            children: [
              LargeText(
                'Delivery cost',
                color: Colors.grey.shade700,
                fontSize: Constants.defaultFontSize,
                isBold: true,
              ),
              Spacer(),
              LargeText(
                '\$ 1',
                color: Theme.of(context).primaryColor,
                fontSize: Constants.defaultFontSize,
              ),
            ],
          ),
        ),
        CustomHeight(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: Divider(),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: Row(
            children: [
              LargeText(
                'Total',
                color: Colors.grey.shade700,
                fontSize: Constants.defaultFontSize,
              ),
              Spacer(),
              LargeText(
                '\$70',
                color: Theme.of(context).primaryColor,
                fontSize: Constants.defaultFontSize,
                isBold: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.sp,
            width: 100.sp,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.base + '/kingburger.png')),
            ),
          ),
          SizedBox(
            width: 10.sp,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LargeText(
                  "King Burgers",
                  fontSize: Constants.defaultFontSize,
                  isBold: true,
                  color: grey70,
                ),
                SizedBox(
                  height: 3.sp,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                        children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 20.sp,
                        ),
                      ),
                      TextSpan(
                          text: '4.9 ',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600)),
                      TextSpan(text: '(124 ratings)'),
                    ])),
                SizedBox(
                  height: 3.sp,
                ),
                Row(
                  children: [
                    NormalText(
                      'Burger',
                      fontSize: 14.sp,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.circle,
                      size: 5.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                    NormalText(
                      ' Western Food',
                      fontSize: 14.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                      child: NormalText(
                        " No 03, 4th Lane, New Work",
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddDeliveryNote extends StatelessWidget {
  const AddDeliveryNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Row(
        children: [
          LargeText(
            'Delivery Instructions',
            color: Colors.grey.shade700,
            fontSize: Constants.defaultFontSize,
            isBold: true,
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Theme.of(context).primaryColor,
                ),
                NormalText(
                  'Add Notes',
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Constants.defaultPadding, vertical: 16.sp),
      color: Colors.grey.withOpacity(.2),
      child: Column(
        children: [
          ...orderData.map(
            (e) => Column(
              children: [
                OrderItem(item: e),
                CustomHeight(
                  height: 10,
                ),
                if ((orderData.indexOf(e) + 1) != orderData.length) Divider()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OrderModel {
  int qty;
  String name;
  double price;
  OrderModel({required this.qty, required this.name, required this.price});
}

List<OrderModel> orderData = [
  OrderModel(name: "Beef Burger", qty: 1, price: 16),
  OrderModel(name: "Classic Burger", qty: 1, price: 16),
  OrderModel(name: "Cheese Chicken Burger", qty: 1, price: 16),
  OrderModel(name: "Chicken Legs Basket", qty: 1, price: 16),
  OrderModel(name: "French  Fries Large", qty: 1, price: 16),
];

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final OrderModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NormalText(
          '${item.name} x${item.qty}',
          color: Colors.grey.shade600,
        ),
        Spacer(),
        NormalText(
          '\$ ${item.price}',
          isBold: true,
          color: Colors.grey.shade700,
        ),
      ],
    );
  }
}
