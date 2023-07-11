import 'package:flutter/material.dart';
import 'package:getx_crash_course/utils/utils.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utils.snackBar(title: "RRK",message: "I am Riyazur Rohman Kawchar");
        },
      ),
    );
  }
}
