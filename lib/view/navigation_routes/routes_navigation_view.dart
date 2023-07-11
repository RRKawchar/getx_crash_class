import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/res/routes/routes_name.dart';
import 'package:getx_crash_course/view/home_screen.dart';

class RoutesNavigationView extends StatefulWidget {
  const RoutesNavigationView({Key? key}) : super(key: key);

  @override
  State<RoutesNavigationView> createState() => _RoutesNavigationViewState();
}

class _RoutesNavigationViewState extends State<RoutesNavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routes"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            Get.toNamed(RoutesName.homeScreen,arguments: [
              'RRK',
              "Riyazur Rohman Kawcahr"
            ]);
          }, child: const Text("No to next screen"),))
        ],
      ),
    );
  }
}
