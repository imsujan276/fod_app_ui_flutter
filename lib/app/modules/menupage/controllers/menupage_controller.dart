import 'package:get/get.dart';

class MenupageController extends GetxController {
  //TODO: Implement MenupageController

  var _currentIndex = 1.obs;
  int get currentIndex => _currentIndex.value;
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

//update currentIndex
  updateCurrentIndex(int value) {
    if (value == _currentIndex) return;
    _currentIndex.value = value;
    print(currentIndex);
    update();
  }
}
