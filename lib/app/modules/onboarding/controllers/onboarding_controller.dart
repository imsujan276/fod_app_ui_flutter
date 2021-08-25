import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final count = 0.obs;
  late PageController pageController;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  ///increase counter value
  void increment() {
    if (count.value < 2) count.value++;
  }

  ///change index
  void onChanged(i) {
    count.value = i;
  }

  ///decrease counter value
  void decrement() => count.value--;
}
