import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/favorite_controller.dart';

class FavoriteProductWidget extends StatelessWidget {
  final FavoriteController favoriteController;
  const FavoriteProductWidget({Key? key, required this.favoriteController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: favoriteController.fruitsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(favoriteController.fruitsList[index]),
              trailing: IconButton(onPressed: () {
                if (favoriteController.tempFruitList
                    .contains(favoriteController.fruitsList[index])) {
                  favoriteController.removeFromFavorite(
                      favoriteController.fruitsList[index]);
                } else {
                  favoriteController
                      .addToFavorite(favoriteController.fruitsList[index]);
                }
              }, icon: Obx(() {
                return Icon(
                  Icons.favorite,
                  color: favoriteController.tempFruitList
                      .contains(favoriteController.fruitsList[index])
                      ? Colors.red
                      : Colors.white,
                );
              })),
            ),
          );
        });
  }
}
