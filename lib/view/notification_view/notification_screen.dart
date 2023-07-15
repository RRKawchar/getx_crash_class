import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/notification_view/widgets/notification_button_widget.dart';
import 'package:getx_crash_course/view_model/controllers/notification_controller.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Notification"),
          Row(
            children: [
              const Text("Notification"),
              NotificationButtonWidget(),
            ],
          )
        ],
      ),
    );
  }
}
