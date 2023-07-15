import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationController extends GetxController{

  RxBool notification=false.obs;


  @override
  void onInit() {
    getNotification().then((value){
      print(value);
      notification.value=value;
      print(notification.value);
    });
    super.onInit();
  }

  setNotification(bool value){
    notification.value=value;
    saveNotification(value);
  }

  Future<void> saveNotification(bool value)async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    await sp.setBool('notification', value);

  }

  Future<bool> getNotification()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    bool? isNotification = sp.getBool('notification');

    return isNotification!;

  }



}