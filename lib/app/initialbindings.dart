import 'package:get/get.dart';

import 'core/services/appService.dart';
import 'modules/menupage/controllers/menupage_controller.dart';

class InitalBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AppService());
    Get.put(
      MenupageController(),
    );
  }
}
