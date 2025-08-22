import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';

class LoginScreenController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Email and password are required');
    } else {
      Get.offAllNamed(Routes.main);
    }
  }
}
