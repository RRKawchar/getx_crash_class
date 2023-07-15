import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/notification_controller.dart';

class NotificationButtonWidget extends StatelessWidget {
   NotificationButtonWidget({Key? key}) : super(key: key);


  final notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return  Obx(() => Switch(
        value: notificationController.notification.value,
        onChanged: (value) {
          if(notificationController.notification.value){
            print('Riyazur Rohman Kawchar');
          }else{
            print("RRK False");
          }

          notificationController.setNotification(value);
        }));
  }
}
