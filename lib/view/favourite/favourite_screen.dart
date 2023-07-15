import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view/favourite/widgets/favorite_button_widget.dart';
import 'package:getx_crash_course/view/favourite/widgets/favorite_product_widget.dart';
import 'package:getx_crash_course/view_model/controllers/favorite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("favorite".tr),
        actions: [
          FavoriteButtonWidget(favoriteController: favoriteController)
        ],
      ),
      body: FavoriteProductWidget(favoriteController: favoriteController,)
    );
  }
}
