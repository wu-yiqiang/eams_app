import 'package:eams/api/cookbook.dart';
import 'package:get/get.dart';

class TodayMenuController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList dailyMenus = [].obs;
  void setIndex(value) {
    currentIndex.value = value;
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getCookBookLists();
  }

  Future<void> getCookBookLists() async {
    try {
      final {'data': data} = await CookBook.getCookBooks();
      dailyMenus.value = data ?? [];
    } catch (e) {
      dailyMenus.value = [];
    }
  }
}
