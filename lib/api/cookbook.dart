import 'package:eams/utils/request.dart';

class CookBook {
  static getCookBooks() {
    return Request.post("/cookbook/menus", null, null);
  }
}
