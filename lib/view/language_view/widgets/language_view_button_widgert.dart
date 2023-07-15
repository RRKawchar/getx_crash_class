import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/language_controller.dart';

class LanguageViewButtonWidget extends StatelessWidget {
   LanguageViewButtonWidget({Key? key}) : super(key: key);

  final languageController = Get.put(LanguageController());
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
            onPressed: () {
              languageController.changeLanguage('en', "US");
            },
            child: const Text("English")),
        OutlinedButton(
            onPressed: () {
              languageController.changeLanguage('bn', 'BD');
            },
            child: const Text("Bangla")),
      ],
    );
  }
}
