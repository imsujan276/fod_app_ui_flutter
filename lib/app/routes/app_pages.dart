import 'package:get/get.dart';

import 'package:food_delivery/app/modules/four/bindings/four_binding.dart';
import 'package:food_delivery/app/modules/four/views/four_view.dart';
import 'package:food_delivery/app/modules/home/bindings/home_binding.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';
import 'package:food_delivery/app/modules/one/bindings/one_binding.dart';
import 'package:food_delivery/app/modules/one/views/one_view.dart';
import 'package:food_delivery/app/modules/three/bindings/three_binding.dart';
import 'package:food_delivery/app/modules/three/views/three_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONE,
      page: () => OneView(),
      binding: OneBinding(),
    ),
    GetPage(
      name: _Paths.THREE,
      page: () => ThreeView(),
      binding: ThreeBinding(),
    ),
    GetPage(
      name: _Paths.FOUR,
      page: () => FourView(),
      binding: FourBinding(),
    ),
  ];
}
