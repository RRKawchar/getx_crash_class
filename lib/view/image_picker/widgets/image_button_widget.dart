import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/image_picker_controller.dart';
import 'package:image_picker/image_picker.dart';

class ImageButtonWidget extends StatelessWidget {
  final ImagePickerController imagePickerController;
  const ImageButtonWidget({Key? key, required this.imagePickerController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          imagePickerController.pickedImage(ImageSource.gallery);
        },
        child: Text("pickImage".tr));
  }
}
