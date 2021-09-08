import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/responsive_layout.dart';
import 'package:food_delivery/app/widgets/texts/texts.dart';
// ScreenUtil
import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: ResponsiveLayout(
            mobile: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Constants.defaultPadding,
                      vertical: Constants.defaultPadding),
                  height: 300.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage(
                            AppImages.tandori,
                          ),
                          fit: BoxFit.fitWidth))
             
                  ),
              Container(
                margin: EdgeInsets.only(top: 250.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescriptionPart(),
                    Divider(),
                    CustomizeOrder(),
                    CustomHeight(),
                    AddToCart(),
                    CustomHeight(),
                  ],
                ),
              ),
              buildAppBar(onPressed: () {
                Navigator.of(context).pop();
              }),
              Positioned(
                top: 230.h,
                right: 12.sp,
                child: AddToFavourite(),
             
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class AddToFavourite extends StatefulWidget {
  const AddToFavourite({
    Key? key,
  }) : super(key: key);

  @override
  _AddToFavouriteState createState() => _AddToFavouriteState();
}

class _AddToFavouriteState extends State<AddToFavourite> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/icons/shape.png'))),
          height: 50,
          width: 50,
          alignment: Alignment(-.123, -.10),
          child: Icon(
            Icons.favorite,
            color: isLiked ? Colors.red : Colors.grey,
            size: 16.sp,
          ),
        ));
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Container(
        width: double.infinity,
        child: Stack(children: [
          Container(
            height: 160.h,
            width: 120.h,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.sp),
                    bottomRight: Radius.circular(40.sp))),
          ),
          Positioned(
            top: 20.sp,
            left: 60.h,
            child: Container(
              width: .7.sw,
              height: 120.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: .5,
                        spreadRadius: .5)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NormalText('Total Price'),
                  CustomHeight(
                    height: 8,
                  ),
                  LargeText('LKR 1440'),
                  CustomHeight(
                    height: 10,
                  ),
                  Container(
                    height: 40.sp,
                    width: 180.sp,
                    child: CustomTextButton(
                      icon: Icons.shopping_cart,
                      label: 'Add to Cart',
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              left: .8.sw,  
              top: 60.sp,
              child: Container(
                height: 40.h,
                width: 40.h,
                child: Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
                
              ))
        ]),
      ),
    );
  }
}

class CustomizeOrder extends StatelessWidget {
  const CustomizeOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Constants.defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LargeText('Customize your Order',
              fontSize: 18.sp, color: Colors.grey.shade700),
          CustomHeight(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
            alignment: Alignment.center,
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButton(
              dropdownColor: Colors.grey[200],
              isExpanded: true,
              value: '1',
              onChanged: (v) {},
              underline: Container(color: Colors.transparent),
              items: [
                DropdownMenuItem(
                    child: NormalText(
                      '- Select the number of portion ',
                      color: Colors.grey[600],
                    ),
                    value: '1'),
                DropdownMenuItem(
                    child: NormalText('- Select the size of protion'),
                    value: '2')
              ],
            ),
          ),
          CustomHeight(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20.sp, right: 5.sp),
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButton(
              dropdownColor: Colors.grey[200],
              isExpanded: true,
              value: '1',
              onChanged: (v) {},
              underline: Container(color: Colors.transparent),
              items: [
                DropdownMenuItem(
                    child: NormalText(
                      '- Select the number of ingredients-',
                      color: Colors.grey[600],
                    ),
                    value: '1'),
                DropdownMenuItem(
                    child: NormalText(
                      '- Select the number of ingredients-',
                      color: Colors.grey[600],
                    ),
                    value: '3'),
                DropdownMenuItem(
                    child: NormalText(
                      '- Select the number of ingredients-',
                      color: Colors.grey[600],
                    ),
                    value: '13'),
              ],
            ),
          ),
          CustomHeight(),
          Row(children: [
            LargeText('Number of Portions',
                fontSize: 18.sp, color: Colors.grey.shade700),
            Spacer(),
            CustomIconButton(
              icon: Icons.remove,
            ),
            CustomIconButton(isEnabled: false, text: '2'),
            CustomIconButton(
              icon: Icons.add,
            ),
          ])
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.icon = Icons.clear,
    this.isEnabled = true,
    this.text = '',
  }) : super(key: key);
  final String text;
  final bool isEnabled;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 5.sp),
        width: 30.h,
        height: 25.h,
        child: icon != Icons.clear
            ? Icon(
                icon,
                color: Colors.white,
                size: 16,
              )
            : NormalText(
                text,
                color: Theme.of(context).primaryColor,
              ),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            color: icon != Icons.clear
                ? Theme.of(context).primaryColor
                : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}

class DescriptionPart extends StatelessWidget {
  const DescriptionPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Constants.defaultPadding,
          vertical: Constants.defaultPadding * 1.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LargeText(
            'Tandoori Chicken Pizza',
            color: Colors.grey.shade800,
          ),
          CustomHeight(height: 5),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Icon(i >= 4 ? Icons.star_border : Icons.star,
                    color: Theme.of(context).primaryColor)
            ],
          ),
          CustomHeight(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(
                '4 Star Ratings',
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
              Spacer(),
              Column(
                children: [
                  LargeText(
                    'Rs. 750',
                    color: Colors.grey.shade800,
                  ),
                  NormalText(
                    '/ per Portion',
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                  )
                ],
              )
            ],
          ),
          LargeText(
            'Description',
            color: Colors.grey.shade700,
            fontSize: 18.sp,
          ),
          CustomHeight(
            height: 10,
          ),
          NormalText(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
        ],
      ),
    );
  }
}
