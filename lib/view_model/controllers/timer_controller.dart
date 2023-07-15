import 'dart:async';
import 'package:get/get.dart';

class TimerController extends GetxController {
  var second = 0.obs;
  var minute = 0.obs;
  var hour = 0.obs;

  @override
  void onInit() {
    setTimer();
    super.onInit();
  }

  setTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (second.value == 20) {
        second.value = 0;
        if (minute.value == 20) {
          minute.value = 0;
          hour.value++;
        } else {
          minute.value++;
        }
      } else {
        second.value++;
      }
    });
  }

  timerIncrement() {
    second.value++;
    print(second.value);
  }
}
