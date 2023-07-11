import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/utils/utils.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key,}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Getx State management ${Get.arguments[1]}"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                Get.toNamed('/screen_two',arguments: [
                  'Riyazur Rohman Kawchar'
                ]);
                },
                child: const Text("Next")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.snackBar(title: "RRK", message: "I am Riyazur Rohman Kawchar");
        },
      ),
    );
  }
}
