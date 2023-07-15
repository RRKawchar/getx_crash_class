import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/spslash_controller.dart';

class SplashLanguageWidget extends StatelessWidget {
   SplashLanguageWidget({Key? key}) : super(key: key);


  final splashController=Get.put(SplashController());
  
  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton(
      hint: const Text('Select Language'),
      onChanged: (newValue) {
        final languageCode =
        splashController.getLanguageCode(newValue!);
        splashController.changeLanguage(languageCode, 'US');
      },
      value:splashController.selectedLanguage.value==""?null:splashController.selectedLanguage.value,
      items: splashController.languageList.map((languages) {
        return DropdownMenuItem(
          value: languages,
          child: Text(languages),
        );
      }).toList(),
    ));
  }
}
