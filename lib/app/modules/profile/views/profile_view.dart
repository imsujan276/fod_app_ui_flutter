import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/modules/login/views/three_view.dart';
import 'package:food_delivery/app/modules/menupage/views/homeWidget.dart';
import 'package:food_delivery/app/widgets/buttons/custom_button.dart';
import 'package:food_delivery/app/widgets/texts/large_text.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

// ScreenUtil
class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('ProfileView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(title: 'Profile', isBold: false),
              ProfileTop(),
              CustomHeight(),
              Column(
                children: [
                  DisabledText(label: 'Name', info: 'Emilia Clarke'),
                  DisabledText(label: 'Email', info: 'emailiaclarke@email.com'),
                  DisabledText(label: 'Mobile No', info: '9898989898'),
                  DisabledText(
                      label: 'Address',
                      info: 'No 23, 6th Lane Colombo 03 Clarke'),
                  DisabledText(label: 'Password', info: '**********'),
                  DisabledText(label: 'Confirm Password', info: '**********'),
                  CustomHeight(),
                  CustomTextButton(
                    label: 'Save',
                    onPressed: () {},
                  )
                  // UserDetail(label: 'Name', info: 'Emilia Clarke'),
                ],
              ),
              CustomHeight(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class DisabledText extends StatelessWidget {
  const DisabledText({
    Key? key,
    required this.info,
    required this.label,
  }) : super(key: key);
  final String info;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding,
            vertical: Constants.defaultmargin / 2),
        padding: EdgeInsets.symmetric(
          horizontal: 40.sp,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.sp),
            color: Colors.grey.withOpacity(.15)),
        height: 70.h,
        child: TextField(
            enabled: false,
            decoration: InputDecoration(
              // contentPadding:
              //     EdgeInsets.only(left: 40.sp, top: 16.sp),
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: label, // 'Name',
              labelStyle: TextStyle(fontSize: 20.sp),
              hintStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]),
              hintText: info,
            ) //'Emilia Clarke'),
            //
            ));
  }
}

class ProfileTop extends StatelessWidget {
  const ProfileTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.sp,
            backgroundImage: AssetImage(AppImages.profile),
          ),
          CustomHeight(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Theme.of(context).primaryColor,
                size: 15.sp,
              ),
              SizedBox(
                width: 5.sp,
              ),
              NormalText(
                'Edit Profile',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
          CustomHeight(
            height: 10,
          ),
          LargeText(
            'Hi there Emilla!',
            color: Colors.grey.shade700,
          ),
          CustomHeight(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.to(LoginView());
            },
            child: NormalText(
              'Sign Out',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
