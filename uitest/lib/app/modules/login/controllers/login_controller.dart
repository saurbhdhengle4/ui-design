import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool passwordVisible = true.obs;
  @override
  void onInit() {
    email.text = "Username@gmail.com";
    password.text = "Reset@123";
    super.onInit();
  }
}
