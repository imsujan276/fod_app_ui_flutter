import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/constants/app_colors.dart';
import 'package:food_delivery/app/constants/constants.dart';
import 'package:food_delivery/app/constants/images.dart';
import 'package:food_delivery/app/constants/strings.dart';
import 'package:food_delivery/app/modules/login/views/login.dart';
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAppBar(title: 'Profile', isBold: false),
          ProfileHeader(),
          CustomHeight(),
          ProfileBody(),
          CustomHeight(
            height: 40.sp,
          ),
        ],
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProfileMenu(label: 'Name', info: 'Emilia Clarke'),
        CustomProfileMenu(label: 'Email', info: 'emailiaclarke@email.com'),
        CustomProfileMenu(label: 'Mobile No', info: '9898989898'),
        CustomProfileMenu(
            label: 'Address', info: 'No 23, 6th Lane Colombo 03 Clarke'),
        CustomProfileMenu(label: 'Password', info: '**********'),
        CustomProfileMenu(label: 'Confirm Password', info: '**********'),
        CustomHeight(),
        CustomTextButton(
          label: 'Save',
          onPressed: () {},
        ),
        CustomHeight(
          height: 50.sp,
        ),
      ],
    );
  }
}

class CustomProfileMenu extends StatelessWidget {
  const CustomProfileMenu({
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
        padding: EdgeInsets.symmetric(horizontal: 40.sp, vertical: 6.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.sp),
            color: grey.withOpacity(.15)),
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: label, // 'Name',
            labelStyle: TextStyle(fontSize: 20.sp, height: .05),
            hintStyle: TextStyle(
                fontSize: Constants.defaultFontSize,
                fontWeight: FontWeight.w600,
                color: grey70),
            hintText: info,
          ),
        ));
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
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
                Strings.edit_profile,
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
              Strings.signout,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
