import 'package:get/get.dart';

import '../controllers/paymentdetail_controller.dart';

class PaymentdetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentdetailController>(
      () => PaymentdetailController(),
    );
  }
}
