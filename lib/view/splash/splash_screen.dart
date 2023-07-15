import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_dark_button.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_language_widget.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_light_button.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_progress_indicator.dart';
import 'package:getx_crash_course/view_model/controllers/spslash_controller.dart';
import 'package:getx_crash_course/view_model/services/splash_service.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashService = SplashService();
  final splashController=Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("select_language".tr),

              SplashLanguageWidget(),


              const SizedBox(height: 20,),

              SplashProgressIndicator(splashService: splashService),

              const SizedBox(height: 20,),

               Text("change_theme".tr),

              SplashLightButton(splashService: splashService),

              SplashDarkButton(splashService: splashService)

            ],
          ),
        ),
      ),
    );
  }
}
