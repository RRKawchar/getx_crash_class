import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightRedWidget extends StatelessWidget {
  const HeightRedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        height: Get.height * .2,
        width: Get.height * .2,
        child: const Center(
          child: Text("Red Color"),
        ),
      ),
    );
  }
}
