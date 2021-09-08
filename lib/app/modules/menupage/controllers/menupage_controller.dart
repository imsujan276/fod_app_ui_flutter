import 'package:get/get.dart';

class MenupageController extends GetxController {
 
  var _currentIndex = 0.obs;
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

//to update page index on home
  updateCurrentIndex(int value) {
    if (value == _currentIndex) return;
    _currentIndex.value = value;
    // print(currentIndex);
   
  }
}
