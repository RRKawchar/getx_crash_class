import 'package:flutter/material.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_dark_button.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_light_button.dart';
import 'package:getx_crash_course/view/splash/widgets/splash_progress_indicator.dart';
import 'package:getx_crash_course/view_model/services/splash_service.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashService = SplashService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SplashProgressIndicator(splashService: splashService),

          const SizedBox(height: 20,),

          const Text("Do you want to change theme?"),

          SplashLightButton(splashService: splashService),

         SplashDarkButton(splashService: splashService)

        ],
      ),
    );
  }
}
