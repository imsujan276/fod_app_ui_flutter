import 'package:get/get.dart';

import '../controllers/more_options_controller.dart';

class MoreOptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoreOptionsController>(
      () => MoreOptionsController(),
    );
  }
}
