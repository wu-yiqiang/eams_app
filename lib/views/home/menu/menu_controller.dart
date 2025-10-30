import 'package:eams/api/cookbook.dart';
import 'package:get/get.dart';

class TodayMenuController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList todayMenus = [].obs;
  void setIndex(value) {
    currentIndex.value = value;
  }

  void onInit() async {
    try{
      final {'data': data} = await CookBook.getCookBooks();
      todayMenus.value = data ?? [];
    }catch (e){
      todayMenus.value =  [];
    }
    super.onInit();
  }
}
