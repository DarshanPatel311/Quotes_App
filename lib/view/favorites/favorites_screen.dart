import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quotes_app/Controller/api.dart';
import 'package:quotes_app/utils/utls.dart';
import 'package:quotes_app/view/Home/home_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController apiController=Get.put(ApiController());
    return Scaffold(
      backgroundColor: bgcolor,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Favorites Categories",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: textcolor
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [



                (apiController.love==true)?GestureDetector(
                  onTap: () {
                    Get.toNamed('/love');

                  },
                  child: Container(
                    height: 80,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4,5)
                          )
                        ]

                    ),
                    child: Center(child: Text(" Quotes in Love",style: TextStyle(
                        color: textcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),),
                  ),
                ):Container(),
                Spacer(),
                (font==true)?GestureDetector(
                  onTap: () {
                    Get.toNamed('/love');

                  },
                  child: Container(
                    height: 80,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4,5)
                          )
                        ]

                    ),
                    child: Center(child: Text(" Quotes in Affirmation",style: TextStyle(
                        color: textcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),),
                  ),
                ):Container(),

              ],
            ),
          )



        ],
      ),
    );
  }
}
