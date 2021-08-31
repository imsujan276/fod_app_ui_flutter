import 'package:food_delivery/app/modules/menupage/controllers/menupage_controller.dart';
import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(
      () => CategoryController(),
    );
    Get.lazyPut<MenupageController>(
      () => MenupageController(),
    );
  }
}
