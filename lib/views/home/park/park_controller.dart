import 'package:eams/api/park.dart';
import 'package:get/get.dart';

class ParkController extends GetxController {
  RxInt sumStations = 0.obs;
  RxInt remainStations = 0.obs;
  RxInt usedStations = 0.obs;

  Future<void> getStations() async {
    try {
      final {'data': data} = await Park.getParkDetails();
      print(data);
      final {'sum': sum, 'remain': remain, 'used': used} = data ?? {};
      sumStations.value = sum ?? 0;
      remainStations.value = remain ?? 0;
      usedStations.value = used ?? 0;
    } catch (e) {
      sumStations.value = 0;
      remainStations.value = 0;
      usedStations.value = 0;
    }
  }
}
