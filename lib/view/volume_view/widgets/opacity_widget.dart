import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/volume_controller.dart';

class OpacityWidget extends StatelessWidget {
   OpacityWidget({Key? key}) : super(key: key);

  final volumeController = Get.put(VolumeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
              () => Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(volumeController.opacity.value),
          ),
        ),
        Obx(
              () => Slider(
              value: volumeController.opacity.value,
              onChanged: (value) {
                volumeController.setOpacity(value);
              }),
        ),
      ],
    );
  }
}
