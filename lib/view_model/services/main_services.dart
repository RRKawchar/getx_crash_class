import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainServices{

  void initializeTheme()async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    bool? isDarkTheme = sp.getBool('isDarkTheme');

     if (kDebugMode) {
       print('Initialize Theme $isDarkTheme');
     }
    if(isDarkTheme !=null && isDarkTheme){
      Get.changeTheme(ThemeData.dark());
    }else{
      Get.changeTheme(ThemeData.light());
    }
  }

}