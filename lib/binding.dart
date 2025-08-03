import 'package:get/get.dart';
import 'package:eams_app/views/Home/controller/home_controller.dart';


class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
