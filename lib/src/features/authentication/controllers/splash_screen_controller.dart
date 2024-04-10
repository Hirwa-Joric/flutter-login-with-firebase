import 'package:flutter/material.dart';
import 'package:flutter_login/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future<void> startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(welcome_screen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

}