import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/data/network/network_api_services.dart';
import 'package:getx_crash_course/models/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController{

  final String _languageCodeKey = 'languageCode';
  final String _countryCodeKey = 'countryCode';

  final RxString languageCode = ''.obs;
  final RxString countryCode = ''.obs;


  final selectLanguage="".obs;
  List<String> languageList=[
    "English",
    "বাংলা"
  ];


  void selectedLanguage(String value){
    selectLanguage.value=value;
  }


  @override
  void onInit() {
    super.onInit();
    initializeLanguage();
  }

  Future<void> initializeLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final storedLanguageCode = prefs.getString(_languageCodeKey);
    final storedCountryCode = prefs.getString(_countryCodeKey);

    if (storedLanguageCode != null && storedCountryCode != null) {
      languageCode.value = storedLanguageCode;
      countryCode.value = storedCountryCode;
      setLocale(Locale(storedLanguageCode, storedCountryCode));
    } else {
      changeLanguage('en', 'US');
    }
  }

  Future<void> changeLanguage(String languageCode, String countryCode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageCodeKey, languageCode);
    await prefs.setString(_countryCodeKey, countryCode);

    this.languageCode.value = languageCode;
    this.countryCode.value = countryCode;
    setLocale(Locale(languageCode, countryCode));
  }

  void setLocale(Locale locale) {
    Get.updateLocale(locale);
  }


}