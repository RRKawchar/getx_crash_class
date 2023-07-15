import 'package:get/get.dart';

class FavoriteController extends GetxController{


  RxList fruitsList=["Apple","Mangoes","Banana","Orange"].obs;
  RxList tempFruitList=[].obs;


  addToFavorite(String value){
    tempFruitList.add(value);
  }


  removeFromFavorite(value){
    tempFruitList.remove(value);
  }

}