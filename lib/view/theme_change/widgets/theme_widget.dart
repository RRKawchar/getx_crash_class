import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/utils/utils.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("GetX Bottom Sheet"),
        subtitle: const Text("Change Theme"),
        onTap: () {
          Get.bottomSheet(Container(
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.light_mode),
                  title: const Text("Light Theme"),
                  onTap: () {
                    Get.changeTheme(ThemeData.light());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.dark_mode),
                  title: const Text("Dark Theme"),
                  onTap: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
