import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/res/localization/languages.dart';
import 'package:getx_crash_course/res/routes/app_routes.dart';
import 'package:getx_crash_course/view_model/services/main_services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    MainServices().initializeTheme();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      fallbackLocale: const Locale('en','US'),
      locale: const Locale('en','US'),
      translations: Languages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages:AppRoutes.appRouts
    );
  }
}


