import 'package:flutter/material.dart';
import 'package:getx_crash_course/view/theme_change/widgets/alert_dialog_widget.dart';
import 'package:getx_crash_course/view/theme_change/widgets/theme_widget.dart';

class ThemeChangeView extends StatelessWidget {
  const ThemeChangeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AlertDialogWidget(),
          ThemeWidget(),
        ],
      ),
    );
  }
}
