import 'package:get/get.dart';

import '../controllers/menupage_controller.dart';

class MenupageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenupageController>(
      () => MenupageController(),
    );
  }
}
