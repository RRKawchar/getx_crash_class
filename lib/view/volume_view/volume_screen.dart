import 'package:flutter/material.dart';
import 'package:getx_crash_course/view/volume_view/widgets/opacity_widget.dart';
import 'package:getx_crash_course/view/volume_view/widgets/volume_widget.dart';

class VolumeScreen extends StatelessWidget {
  VolumeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OpacityWidget(),
          const SizedBox(
            height: 20
          ),
         VolumeWidget(),
        ],
      ),
    );
  }
}
