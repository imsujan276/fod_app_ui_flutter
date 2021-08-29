import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/app/data/models/menuItem.dart';
import 'package:food_delivery/app/widgets/texts/normal_text.dart';

import 'package:get/get.dart';

import '../controllers/menupage_controller.dart';
import 'homeWidget.dart';

List<MenuItem> _bottomMenuList = [
  MenuItem(
    name: "Menu",
    icon: Icons.dashboard,
  ),
  MenuItem(
    name: "Offers",
    icon: Icons.shopping_bag,
  ),
  MenuItem(
    name: "Profile",
    icon: Icons.person,
  ),
  MenuItem(
    name: "More",
    icon: Icons.menu_open,
  ),
];

List<Widget> _children = [
  HomeWidget(),
  Container(),
  Container(),
  Container(),
  Container(),
];

class MenupageView extends GetView<MenupageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
       
      body:  
          Obx(
        () => controller.currentIndex != 0
            ? Container()
            : IndexedStack(
                index: controller.currentIndex,
                children: _children,
              ),
      ),

      bottomNavigationBar: Obx(
        () => controller.currentIndex == 5
            ? Container()
            : BottomAppBar(
                color: Colors.white,
                shape: CircularNotchedRectangle(),
                notchMargin: 12,
                child: Container(
                  height: 50.h,
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      NavItem(
                          icon: Icons.dashboard,
                          name: 'Menu',
                          isSelected:
                              controller.currentIndex == 1 ? true : false,
                          ontap: () {
                            controller.updateCurrentIndex(1);
                          }),
                      Spacer(
                        flex: 1,
                      ),
                      NavItem(
                          icon: Icons.shopping_bag,
                          name: 'Offers',
                          isSelected:
                              controller.currentIndex == 2 ? true : false,
                          ontap: () {
                            controller.updateCurrentIndex(2);
                          }),
                      Spacer(
                        flex: 4,
                      ),
                      NavItem(
                          icon: Icons.person,
                          name: 'Profile',
                          isSelected:
                              controller.currentIndex == 3 ? true : false,
                          ontap: () {
                            controller.updateCurrentIndex(3);
                          }),
                      Spacer(
                        flex: 1,
                      ),
                      NavItem(
                          icon: Icons.menu_open,
                          name: 'More',
                          isSelected:
                              controller.currentIndex == 4 ? true : false,
                          ontap: () {
                            controller.updateCurrentIndex(4);
                          }),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(
        () => FloatingActionButton(
          child: Icon(
            FontAwesomeIcons.home,
            color: controller.currentIndex == 0
                ? Colors.grey.shade200
                : Colors.grey,
          ),
          backgroundColor: controller.currentIndex == 0
              ? Theme.of(context).primaryColor
              : Colors.grey.shade200,
          onPressed: () {
            controller.updateCurrentIndex(0);
          },
        ),
      ),
    );
  }
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
    return GestureDetector(
      onTap: () => ontap(),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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

Widget _bottomAppBar(
  context,
) {
  final menuPageController = Get.find<MenupageController>();
  return BottomAppBar(
      color: Colors.grey,
      shape: CircularNotchedRectangle(),
      child: BottomNavigationBar(
        onTap: (i) {
          print(i);
          menuPageController.updateCurrentIndex(i);
        },
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        items: [
          ..._bottomMenuList.map((e) => BottomNavigationBarItem(
                  icon: Icon(
                    e.icon,
                  ),
                  label: e.name)
              // IconButton(
              //             icon: Icon(e.icon),
              //             onPressed: () {},
              //           )) IconButton(
              //             icon: Icon(e.icon),
              //             onPressed: () {},
              //           ) ).toList()
              )
        ],
      ));
}
