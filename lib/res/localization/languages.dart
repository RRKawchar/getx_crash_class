import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys =>{

    'en_US':{
      'message':"What's your name?",
      'name':"Riyazur Rohman Kawchar",
      'select_language':"Select Language",
       'change_theme':"Do you want to change the theme?",
       'light_theme':"Light Theme",
       'dark_theme':"Dark Theme",
       'favorite':"Favorite",
       'pickImage':"Pick Image",
        'login':"Login",
        'email_hint':"Enter Email" ,
        'pass_hint':"Enter Password" ,
    },
    'bn_BD':{
      'message':"তোমার নাম কি?",
      'name':'রিয়াজুর রহমান কাউছার',
      'select_language':'ভাষা নির্বাচন কর',
      'change_theme':"আপনি থিম পরিবর্তন করতে চান?",
      'light_theme':'লাইট থিম',
      'dark_theme':"ডার্ক থিম ",
      'favorite':'ফেভারিট',
      'pickImage':"ছবি বাছাই",
       'login':'লগইন',
      'email_hint':"এন্টার ইমেইল",
      'pass_hint':"এন্টার পাসওয়ার্ড" ,


    }

  };



}