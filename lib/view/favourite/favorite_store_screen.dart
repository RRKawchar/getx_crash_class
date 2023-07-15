import 'package:flutter/material.dart';

class FavoriteStoreScreen extends StatelessWidget {
  final List<dynamic> tempList;
  const FavoriteStoreScreen({Key? key,required this.tempList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
        itemCount: tempList.length,

          itemBuilder: (context,index){
        return Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          alignment: Alignment.center,
          height: 100,
          width: 100,

          child: Text(tempList[index]),
        );
      })
    );
  }
}
