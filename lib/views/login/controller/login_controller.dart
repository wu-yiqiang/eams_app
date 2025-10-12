import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginForm = Rx<Map<String, String>>({
    'username': 'admin',
    'password': '1234_abcd'
  });
  void setLoginForm(String key, String value) {
    LoginForm.value[key] = value;
  }
  // RxString getLoginFormField(String key) {
  //   return LoginForm.get(key)!;
  // }
  Rx<Map<String, String>> getLoginForm() {
    return LoginForm;
  }
}
