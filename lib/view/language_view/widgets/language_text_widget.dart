import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageTextWidget extends StatelessWidget {
  const LanguageTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("message".tr),
      subtitle: Text('name'.tr),
    );
  }
}
