import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:state_management/pages/dashboard_page.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void dataLogin(String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter both username and password',
        colorText: Colors.white,
        backgroundColor: Colors.lightBlue,
      );
    } else if (username == "Rey" && password == "password") {
      Get.to(() => DashboardPage());
      Get.defaultDialog(title: "Selamat datang di dashboard page ${username}");
    } else {
      Get.snackbar(
        'Error',
        'Invalid email or password',
        colorText: Colors.white,
        backgroundColor: Colors.lightBlue,
      );
    }
  }
}
