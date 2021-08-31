import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/modules/menu/views/menu_view.dart';
import 'package:food_delivery/app/modules/more/views/more_view.dart';
import 'package:food_delivery/app/modules/offers/views/offers_view.dart';
import 'package:food_delivery/app/modules/profile/views/profile_view.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/menupage_controller.dart';
import 'homeWidget.dart';

List<Widget> _children = [
  HomeWidget(),
  MenuView(),
  OffersView(),
  ProfileView(),
  MoreView(),
];

class MenupageView extends GetView<MenupageController> {
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) => bodyWidet(context)
        ),
      ),

      ///custom bottomnav
      bottomNavigationBar: bottomNav(),

      ///floating centerdocked
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      ///custom floatingbtn
      floatingActionButton: floatingbtn(context),
    );
  }
}

Widget bodyWidet(context) {
  final controller = Get.find<MenupageController>();
  return Obx(() => controller.currentIndex == 5
      ? Container()
      : IndexedStack(
          index: controller.currentIndex,
          children: _children,
        ));
}

Widget floatingbtn(context) {
  final controller = Get.find<MenupageController>();
  return Obx(
    () => FloatingActionButton(
      child: Icon(FontAwesomeIcons.home,
          color: // controller.currentIndex == 0
              //?
              Colors.grey.shade200
          //: Colors.grey,
          ),
      backgroundColor: controller.currentIndex == 0
          ? Theme.of(context).primaryColor
          : Colors.grey,
      onPressed: () {
        controller.updateCurrentIndex(0);

        Get.to(() => Routes.MENUPAGE);
      },
    ),
  );
}

Widget bottomNav() {
  final controller = Get.find<MenupageController>();
  return Obx(
    () => controller.currentIndex == 5
        ? Container()
        : BottomAppBar(
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 12.sp,
            child: Container(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  NavItem(
                      icon: Icons.dashboard,
                      name: 'Menu',
                      isSelected: controller.currentIndex == 1 ? true : false,
                      ontap: () {
                        controller.updateCurrentIndex(1);
                        Get.toNamed(Routes.MENUPAGE);
                      }),
                  Spacer(
                    flex: 1,
                  ),
                  NavItem(
                      icon: Icons.shopping_bag,
                      name: 'Offers',
                      isSelected: controller.currentIndex == 2 ? true : false,
                      ontap: () {
                        controller.updateCurrentIndex(2);
                        Get.toNamed(Routes.MENUPAGE);
                      }),
                  Spacer(
                    flex: 4,
                  ),
                  NavItem(
                      icon: Icons.person,
                      name: 'Profile',
                      isSelected: controller.currentIndex == 3 ? true : false,
                      ontap: () {
                        controller.updateCurrentIndex(3);
                        Get.toNamed(Routes.MENUPAGE);
                      }),
                  Spacer(
                    flex: 1,
                  ),
                  NavItem(
                      icon: Icons.menu_open,
                      name: 'More',
                      isSelected: controller.currentIndex == 4 ? true : false,
                      ontap: () {
                        controller.updateCurrentIndex(4);
                        Get.toNamed(Routes.MENUPAGE);
                      }),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
  );
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.name,
    this.isSelected = false,
    required this.ontap,
  }) : super(key: key);
  final Function ontap;
  final IconData icon;
  final String name;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.white,
      onTap: () => ontap(),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            ),
            CustomHeight(
              height: 3,
            ),
            NormalText(
              name,
              fontWeight: FontWeight.w600,
              color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            )
          ]),
    );
  }
}
