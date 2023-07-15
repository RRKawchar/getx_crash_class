import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/volume_controller.dart';

class VolumeWidget extends StatelessWidget {
  VolumeWidget({Key? key}) : super(key: key);

  final volumeController = Get.put(VolumeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              volumeController.volume.value == 0.0
                  ? const Icon(
                      Icons.volume_off_outlined,
                      size: 50,
                    )
                  : const Icon(
                      Icons.volume_down_outlined,
                      size: 50,
                    ),
              Text(
                "${volumeController.volume.value.toStringAsFixed(1)} %",
                style: const TextStyle(fontSize: 50),
              )
            ],
          ),
        ),
        Obx(
          () => Slider(
              value: volumeController.volume.value,
              onChanged: (value) {
                volumeController.setVolume(value);
              }),
        )
      ],
    );
  }
}
