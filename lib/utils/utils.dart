import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/res/app_color/app_colors.dart';

class Utils{


  static snackBar({required String title, message}){
    Get.snackbar(title, message,
        backgroundColor:AppColors.redColor,
        icon: const Icon(Icons.warning),
        onTap: (snack){

        },
        mainButton: TextButton(onPressed: (){}, child: const Text("Click")),
        snackPosition: SnackPosition.BOTTOM

    );
  }



}