import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/image_picker_controller.dart';

class ImageWidget extends StatelessWidget {
  final ImagePickerController imagePickerController;
  const ImageWidget({Key? key, required this.imagePickerController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Center(
        child:CircleAvatar(
          radius: 60,
          backgroundImage: imagePickerController.imagePath.value.isEmpty
              ? null
              : FileImage(File(imagePickerController.imagePath.value)),
        ),
      ),
    );
  }
}
