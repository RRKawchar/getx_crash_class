import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VolumeController extends GetxController{

  RxDouble opacity=.3.obs;
  RxDouble volume=0.0.obs;


   setOpacity(value){
     opacity.value=value;
   }

   setVolume(value){
     volume.value=value;
     saveVolume(value);
   }


  @override
  void onInit() {
    getVolume().then((value){
      volume.value=value;
    });
    super.onInit();
  }



   Future<void> saveVolume(double value)async{
    SharedPreferences sp=await SharedPreferences.getInstance();
     await sp.setDouble('volume',value);
   }

   Future<double> getVolume()async{
     SharedPreferences sp=await SharedPreferences.getInstance();
     double? volume= sp.getDouble('volume');
     return volume!;
   }

}