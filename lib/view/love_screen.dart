import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotes_app/Controller/api.dart';


class LoveScreen extends StatelessWidget {
  const LoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController apiController=Get.put(ApiController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Favorites Love Quotes"),

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(apiController.favoritesList.length, (index)=>
            Column(
              children: [
                Container(
                  height: 70,
                  width: 400,
                  child: Text((apiController.favoritesList[index]=="Love"?"":apiController.favoritesList[index])),
                ),

              ],
            )



            )
          ],
        ),
      ),
    );
  }
}
int indx=0;
