import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxBool drawShow = false.obs;
  void setCurrent(index) {
    currentIndex.value = index;
  }

  void setDrawStatus(status) {
    drawShow.value = status;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
