import 'package:flutter/material.dart';
import 'package:getx_crash_course/view_model/services/splash_service.dart';

class SplashLightButton extends StatelessWidget {
  final SplashService splashService;
  const SplashLightButton({Key? key, required this.splashService}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const Icon(Icons.light_mode),
        title: const Text("Light Theme"),
        onTap: () {
          splashService.changeThemeToLight();

        }
    );
  }
}
