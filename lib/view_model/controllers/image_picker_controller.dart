import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImagePickerController extends GetxController{

  RxString imagePath=''.obs;




  pickedImage(ImageSource source)async{
    final ImagePicker picker=ImagePicker();
    try{
      final pickedImage= await picker.pickImage(source:source);
      if(pickedImage !=null){
        imagePath.value=pickedImage.path;
        saveImageInPreference(imagePath.value);
      }
    }catch(e){
      print(e.toString());
    }


  }



  Future<void> saveImageInPreference(String value)async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    await sp.setString('pickImage',value);
  }

  Future<String> getImage()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    String? image =sp.getString('pickImage');
    print(image);
     return image!;
  }


}