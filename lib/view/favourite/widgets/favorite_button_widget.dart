import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/favourite/favorite_store_screen.dart';
import 'package:getx_crash_course/view_model/controllers/favorite_controller.dart';

class FavoriteButtonWidget extends StatelessWidget {
  final FavoriteController favoriteController;
  const FavoriteButtonWidget({Key? key, required this.favoriteController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.to(FavoriteStoreScreen(
            tempList: favoriteController.tempFruitList,
          ));
        },
        icon: const Icon(Icons.card_travel));
  }
}
