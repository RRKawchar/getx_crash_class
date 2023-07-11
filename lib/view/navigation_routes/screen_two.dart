import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {

   const ScreenTwo({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Screen two"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("${Get.arguments[0]}"),),
          const SizedBox(height: 20,),
          Center(
            child: TextButton(
                onPressed: () {
                  Get.back();

                },
                child: const Text("Back")),
          )
        ],
      ),
    );
  }
}
