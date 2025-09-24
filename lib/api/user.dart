import 'package:eams/utils/request.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

// export const playVideo = (name: string, type: string) =>
// request.get(`/flet/video/play?name=${name}&types=${type}`)

class UserApi {
  static login(data) {
    return Request.post("/user/login", null, data);
  }
}
