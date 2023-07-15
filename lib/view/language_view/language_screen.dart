import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/language_view/widgets/language_text_widget.dart';
import 'package:getx_crash_course/view/language_view/widgets/language_view_button_widgert.dart';
import 'package:getx_crash_course/view_model/controllers/language_controller.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key}) : super(key: key);

  final languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LanguageTextWidget(),
            const SizedBox(
              height: 40
            ),
           LanguageViewButtonWidget()
          ],
        ),
      ),
    );
  }
}
