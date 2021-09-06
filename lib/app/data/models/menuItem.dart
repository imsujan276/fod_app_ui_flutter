import 'package:food_delivery/app/constants/images.dart';

class MenuItem {
  String name;
  String icon;
  int items;
  MenuItem({required this.name, required this.icon, required this.items});
}

final List<MenuItem> menuitems = [
  MenuItem(name: 'Food', icon: AppImages.a, items: 120),
  MenuItem(name: 'Beverages', icon: AppImages.b, items: 120),
  MenuItem(name: 'Deserts', icon: AppImages.c, items: 120),
  MenuItem(name: 'Promotions', icon: AppImages.d, items: 120),
];
