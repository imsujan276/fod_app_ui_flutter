import 'package:get/get.dart';

import '../controllers/three_controller.dart';

class ThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThreeController>(
      () => ThreeController(),
    );
  }
}
