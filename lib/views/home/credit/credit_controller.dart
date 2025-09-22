import 'dart:ffi';

import 'package:get/get.dart';
import 'dart:ui';

class CreditController extends GetxController {
  RxBool visible = false.obs;
  RxDouble credit = 19873434323.45.obs;
  void setVisible(value) {
    visible.value = value;
  }
  void setCredit(value) {
    credit.value = value;
  }
}
