import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/res/app_exception/app_exception.dart';
import 'package:getx_crash_course/res/app_url/app_url.dart';
import 'package:getx_crash_course/view/favourite/favorite_store_screen.dart';
import 'package:getx_crash_course/view/favourite/favourite_screen.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool isLoading=false.obs;

  loginApi() async {

    isLoading.value=true;
    var body = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };

    try {
      final response =
          await http.post(Uri.parse(AppUrl.loginApi), body: body);

      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar("Login", 'You are successfully login in');
        isLoading.value=false;
        Get.to(const FavouriteScreen());
        print("Token is : ${data['token']}");
      } else {
        Get.snackbar("Error", data['error']);
        isLoading.value=false;
      }
    } on SocketException{
      throw InternetException('');
    } catch (e) {
      Get.snackbar("Exception", e.toString());
      isLoading.value=false;
    }
  }
}
