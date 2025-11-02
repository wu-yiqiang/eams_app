
import 'package:eams/utils/request.dart';

class Park {
  static getParkDetails() {
    return Request.post("/park/count", null, null);
  }
}
