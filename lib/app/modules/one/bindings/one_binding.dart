import 'package:get/get.dart';

import '../controllers/one_controller.dart';

class OneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OneController>(
      () => OneController(),
    );
  }
}
