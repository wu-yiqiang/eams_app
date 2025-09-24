import 'package:get/get.dart';
import 'package:eams/views/tabs/controller/tab_controller.dart';


class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(() => TabsController());
  }
}
