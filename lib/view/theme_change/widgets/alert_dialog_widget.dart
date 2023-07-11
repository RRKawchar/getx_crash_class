import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("GetX dialog Alert"),
        subtitle: const Text("Alert Dialog with Getx "),
        onTap: () {
          Get.defaultDialog(
            title: "Delete Chat",
            middleText: "Are you sure you want to delete this chat?",
            contentPadding: const EdgeInsets.all(20),
            titlePadding: const EdgeInsets.only(top: 20),

            confirm: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Ok")),
            cancel:
            TextButton(onPressed: () {}, child: const Text("Cancel")),
            // content: const Column(
            //   children: [
            //     Text("Are you sure you want to delete this chat?"),
            //     Text("Are you sure you want to delete this chat?"),
            //     Text("Are you sure you want to delete this chat?"),
            //     Text("Are you sure you want to delete this chat?"),
            //     Text("Are you sure you want to delete this chat?"),
            //     Text("Are you sure you want to delete this chat?"),
            //     Text("Are you sure you want to delete this chat?"),
            //   ],
            // )
          );
        },
      ),
    );
  }
}
