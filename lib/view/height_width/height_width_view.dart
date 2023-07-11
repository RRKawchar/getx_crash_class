import 'package:flutter/material.dart';
import 'package:getx_crash_course/view/height_width/widgets/green_widget.dart';
import 'package:getx_crash_course/view/height_width/widgets/height_red_widget.dart';

class HeightWidthView extends StatelessWidget {
  const HeightWidthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeightRedWidget(),
          GreenWidget(),
        ],
      ),
    );
  }
}
