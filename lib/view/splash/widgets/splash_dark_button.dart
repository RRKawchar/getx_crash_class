import 'package:flutter/material.dart';
import 'package:getx_crash_course/view_model/services/splash_service.dart';

class SplashDarkButton extends StatelessWidget {
  final SplashService splashService;
  const SplashDarkButton({Key? key, required this.splashService}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const Icon(Icons.dark_mode),
        title: const Text("Dark Theme"),
        onTap: (){
          splashService.changeThemeToDark();
        }
    );
  }
}
