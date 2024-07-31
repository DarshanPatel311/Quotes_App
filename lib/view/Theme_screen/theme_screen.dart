import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quotes_app/utils/utls.dart';

import '../../Controller/home_Controller.dart';
import '../../listr.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController=Get.put(HomeController());
    return Scaffold(


      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: Text("Themes",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textcolor,
          fontSize: 20,
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          spacing: 20.0, // gap between adjacent chips
          runSpacing: 20.0,
          children: [
            ...List.generate(img.length, (index)=>GestureDetector(
              onTap: () {

  homeController.changeIndex(index);
  Get.back();


              },
              child: Container(
                height: 200,
                width: 120,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1,2)
                      )
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(img[index]),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ))



          // ],
          //  // Column(
          //  //
          //  //  children: [
          //
          //
          //
          //     //     Row(
          //     //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     //
          //     //       children: [
          //     //         ...List.generate(img1.length, (index)=>GestureDetector(
          //     //           onTap: () {
          //     //             img1[index];
          //     //             homeController.changeIndex(homeController.currentIndex);
          //     //              Get.back();
          //     //           },
          //     //           child: Container(
          //     //             height: 200,
          //     //             width: 120,
          //     //             decoration: BoxDecoration(
          //     //                 boxShadow: [
          //     //                   BoxShadow(
          //     //                       color: Colors.black,
          //     //                       blurRadius: 3,
          //     //                       offset: Offset(1,2)
          //     //                   )
          //     //                 ],
          //     //                 color: Colors.black,
          //     //                 borderRadius: BorderRadius.circular(15),
          //     //                 image: DecorationImage(
          //     //                     image: AssetImage(img1[index]),
          //     //                     fit: BoxFit.cover
          //     //                 )
          //     //             ),
          //     //           ),
          //     //         )),
          //     //
          //     //
          //     //         // Container(
          //     //         //   height: 200,
          //     //         //   width: 120,
          //     //         //   decoration: BoxDecoration(boxShadow: [
          //     //         //     BoxShadow(
          //     //         //         color: Colors.black,
          //     //         //         blurRadius: 3,
          //     //         //         offset: Offset(1,2)
          //     //         //     )
          //     //         //   ],
          //     //         //
          //     //         //       color: Colors.black,
          //     //         //       borderRadius: BorderRadius.circular(15),
          //     //         //       image: DecorationImage(
          //     //         //           image: AssetImage(""),
          //     //         //           fit: BoxFit.cover
          //     //         //       )
          //     //         //   ),
          //     //         // ),
          //     //         // Container(
          //     //         //   height: 200,
          //     //         //   width: 120,
          //     //         //   decoration: BoxDecoration(
          //     //         //     boxShadow: [
          //     //         //       BoxShadow(
          //     //         //           color: Colors.black,
          //     //         //           blurRadius: 3,
          //     //         //           offset: Offset(1,2)
          //     //         //       )
          //     //         //     ],
          //     //         //     color: Colors.black,
          //     //         //     borderRadius: BorderRadius.circular(15),
          //     //         //     image: DecorationImage(
          //     //         //         image: AssetImage(""),
          //     //         //         fit: BoxFit.cover
          //     //         //     ),
          //     //         //
          //     //         //   ),
          //     //         // ),
          //     //
          //     //       ],
          //     //
          //     // ),
          //         SizedBox(height: 20,),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //
          //           children: [
          //             ...List.generate(img2.length, (index)=>Container(
          //               height: 200,
          //               width: 120,
          //               decoration: BoxDecoration(
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Colors.black,
          //                         blurRadius: 3,
          //                         offset: Offset(1,2)
          //                     )
          //                   ],
          //                   color: Colors.black,
          //                   borderRadius: BorderRadius.circular(15),
          //                   image: DecorationImage(
          //                       image: AssetImage(img2[index]),
          //                       fit: BoxFit.cover
          //                   )
          //               ),
          //             )),


                      // Container(
                      //   height: 200,
                      //   width: 120,
                      //   decoration: BoxDecoration(boxShadow: [
                      //     BoxShadow(
                      //         color: Colors.black,
                      //         blurRadius: 3,
                      //         offset: Offset(1,2)
                      //     )
                      //   ],
                      //
                      //       color: Colors.black,
                      //       borderRadius: BorderRadius.circular(15),
                      //       image: DecorationImage(
                      //           image: AssetImage(""),
                      //           fit: BoxFit.cover
                      //       )
                      //   ),
                      // ),
                      // Container(
                      //   height: 200,
                      //   width: 120,
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //           color: Colors.black,
                      //           blurRadius: 3,
                      //           offset: Offset(1,2)
                      //       )
                      //     ],
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.circular(15),
                      //     image: DecorationImage(
                      //         image: AssetImage(""),
                      //         fit: BoxFit.cover
                      //     ),
                      //
                      //   ),
                      // ),
      //
      //               ],
      //
      //         ),
      //         SizedBox(height: 20,),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //
      //               children: [
      //                 ...List.generate(img3.length, (index)=>Container(
      //                   height: 200,
      //                   width: 120,
      //                   decoration: BoxDecoration(
      //                       boxShadow: [
      //                         BoxShadow(
      //                             color: Colors.black,
      //                             blurRadius: 3,
      //                             offset: Offset(1,2)
      //                         )
      //                       ],
      //                       color: Colors.black,
      //                       borderRadius: BorderRadius.circular(15),
      //                       image: DecorationImage(
      //                           image: AssetImage(img3[index]),
      //                           fit: BoxFit.cover
      //                       )
      //                   ),
      //                 )),
      //
      //
      //                 // Container(
      //                 //   height: 200,
      //                 //   width: 120,
      //                 //   decoration: BoxDecoration(boxShadow: [
      //                 //     BoxShadow(
      //                 //         color: Colors.black,
      //                 //         blurRadius: 3,
      //                 //         offset: Offset(1,2)
      //                 //     )
      //                 //   ],
      //                 //
      //                 //       color: Colors.black,
      //                 //       borderRadius: BorderRadius.circular(15),
      //                 //       image: DecorationImage(
      //                 //           image: AssetImage(""),
      //                 //           fit: BoxFit.cover
      //                 //       )
      //                 //   ),
      //                 // ),
      //                 // Container(
      //                 //   height: 200,
      //                 //   width: 120,
      //                 //   decoration: BoxDecoration(
      //                 //     boxShadow: [
      //                 //       BoxShadow(
      //                 //           color: Colors.black,
      //                 //           blurRadius: 3,
      //                 //           offset: Offset(1,2)
      //                 //       )
      //                 //     ],
      //                 //     color: Colors.black,
      //                 //     borderRadius: BorderRadius.circular(15),
      //                 //     image: DecorationImage(
      //                 //         image: AssetImage(""),
      //                 //         fit: BoxFit.cover
      //                 //     ),
      //                 //
      //                 //   ),
      //                 // ),
      //
      //               ],
      //
      //         ),
      //         SizedBox(height: 20,),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //
      //               children: [
      //                 ...List.generate(img4.length, (index)=>Container(
      //                   height: 200,
      //                   width: 120,
      //                   decoration: BoxDecoration(
      //                       boxShadow: [
      //                         BoxShadow(
      //                             color: Colors.black,
      //                             blurRadius: 3,
      //                             offset: Offset(1,2)
      //                         )
      //                       ],
      //                       color: Colors.black,
      //                       borderRadius: BorderRadius.circular(15),
      //                       image: DecorationImage(
      //                           image: AssetImage(img4[index]),
      //                           fit: BoxFit.cover
      //                       )
      //                   ),
      //                 )),
      //
      //
      //                 // Container(
      //                 //   height: 200,
      //                 //   width: 120,
      //                 //   decoration: BoxDecoration(boxShadow: [
      //                 //     BoxShadow(
      //                 //         color: Colors.black,
      //                 //         blurRadius: 3,
      //                 //         offset: Offset(1,2)
      //                 //     )
      //                 //   ],
      //                 //
      //                 //       color: Colors.black,
      //                 //       borderRadius: BorderRadius.circular(15),
      //                 //       image: DecorationImage(
      //                 //           image: AssetImage(""),
      //                 //           fit: BoxFit.cover
      //                 //       )
      //                 //   ),
      //                 // ),
      //                 // Container(
      //                 //   height: 200,
      //                 //   width: 120,
      //                 //   decoration: BoxDecoration(
      //                 //     boxShadow: [
      //                 //       BoxShadow(
      //                 //           color: Colors.black,
      //                 //           blurRadius: 3,
      //                 //           offset: Offset(1,2)
      //                 //       )
      //                 //     ],
      //                 //     color: Colors.black,
      //                 //     borderRadius: BorderRadius.circular(15),
      //                 //     image: DecorationImage(
      //                 //         image: AssetImage(""),
      //                 //         fit: BoxFit.cover
      //                 //     ),
      //                 //
      //                 //   ),
      //                 // ),
      //
      //               ],
      //
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //   ),
      // ),
  ]))
    );
  }
}
