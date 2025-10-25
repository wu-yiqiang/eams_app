import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginForm = Rx<Map<String, String>>({
    'email': 'sutter.wu@itforce-tech.com',
    'password': '1234@Abcd'
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
