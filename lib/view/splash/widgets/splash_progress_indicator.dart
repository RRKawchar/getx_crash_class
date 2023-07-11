import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/services/splash_service.dart';

class SplashProgressIndicator extends StatelessWidget {
  final SplashService splashService;
   const SplashProgressIndicator({Key? key, required this.splashService}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Obx(() {
      if (splashService.showProgress.value) {
        return const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircularProgressIndicator(),
        );
      } else {
        return Container();
      }
    });
  }
}
