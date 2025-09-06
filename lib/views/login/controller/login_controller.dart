import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginForm = Rx<Map<String, String>>({
    'email': 'Administrator@outlook.com',
    'password': 'cxzc8sqCGG8reTxFfupGqA=='
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
