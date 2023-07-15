import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/timer_controller.dart';

class TimerScreen extends StatelessWidget {
  TimerScreen({Key? key}) : super(key: key);

  final timerController = Get.put(TimerController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Timer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Row(
                children: [
                   Text("${timerController.hour.value} : ${timerController.minute.value} : ${timerController.second.value}", style: const TextStyle(fontSize: 50))
                ],
              );
            })
            // Obx(() {
            //   return Center(
            //       child: Text(
            //     "${timerController.second.value}",
            //     style: const TextStyle(fontSize: 50),
            //   ));
            // })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // timerController.timerIncrement();
        },
        child: const Text("Click"),
      ),
    );
  }
}
