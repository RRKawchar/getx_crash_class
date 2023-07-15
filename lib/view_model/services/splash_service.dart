import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashService {

  RxBool showProgress = false.obs;

  void timerService() {
    showProgress.value = true;
    Timer(const Duration(seconds: 3), () {
     Get.to(const LoginScreen());
      showProgress.value = false;
    });
  }

  void changeThemeToDark() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setBool('isDarkTheme', true);
    Get.changeTheme(ThemeData.dark());
    timerService();
  }

  void changeThemeToLight() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setBool('isDarkTheme', false);
    Get.changeTheme(ThemeData.light());
    timerService();
  }
}
