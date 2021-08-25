import 'package:get/get.dart';

import '../controllers/four_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FourController>(
      () => FourController(),
    );
  }
}
