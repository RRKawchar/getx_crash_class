import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GreenWidget extends StatelessWidget {
  const GreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        height: Get.height * .2,
        width: Get.height * .2,
        child: const Center(
          child: Text("green Color"),
        ),
      ),
    );
  }
}
