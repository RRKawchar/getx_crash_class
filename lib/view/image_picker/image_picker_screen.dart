import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/image_picker/widgets/image_button_widget.dart';
import 'package:getx_crash_course/view/image_picker/widgets/image_widget.dart';
import 'package:getx_crash_course/view_model/controllers/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  final imagePickerController = Get.put(ImagePickerController());

  @override
  void initState() {
    imagePickerController.getImage().then((value) {
      imagePickerController.imagePath.value = value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWidget(imagePickerController: imagePickerController),
          const SizedBox(height: 30),
          ImageButtonWidget(imagePickerController: imagePickerController)
        ],
      ),
    );
  }
}
