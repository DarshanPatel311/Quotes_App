import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:quotes_app/Controller/home_Controller.dart';
import 'package:quotes_app/listr.dart';
import 'package:share_extend/share_extend.dart';
import '../../Controller/api.dart';
import 'components/Three_Box.dart';
import 'components/navigatorbox.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController=Get.put(HomeController());
    ApiController apiController=Get.put(ApiController());
    return Scaffold(
      body: Obx(
        ()=> Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img[homeController.currentIndex.value]),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" 👋 Hii' DK",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),),
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {

                          Get.toNamed('/3',arguments: {});
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffd6d8fe)
                          ),
                          child: Center(
                            child: Icon(Icons.wallpaper,color: Color(0xff4f538a),),
                          ),
                        ),
                      ),
                      Text("Wallpaper",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12

                      ),)
                    ],
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 120,),
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 1,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,

              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,

              scrollDirection: Axis.vertical,
            ),

            items: [
              ...List.generate(apiController.quotesList.length, (index)=>Center(
                child:
                Container(
                  child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('${apiController.quotesList[index]['quote']}',style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          ),
                          SizedBox(height: 50,),
                          Container(
                            width: 170,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                    onTap: () {

                                    },
                                    child: ThreeBox(Icons.more_horiz)),
                                GestureDetector(
                                    onTap: ()  {
                                      ShareExtend.share("${apiController.quotesList[index]['quote']}",  "${apiController.quotesList[index]['quote']}");//share text
                                    },
                                    child: ThreeBox(Icons.ios_share_outlined)),
                                GestureDetector(
                                    onTap: () {

                                    },
                                    child: ThreeBox(Icons.bookmarks_outlined)),
                              ],
                            ),
                          ),
                        ],
                      ),
                )




              ),),



            ],),
              SizedBox(height: 53,),
              Container(
                height: 50,
                width: 180,
                margin: EdgeInsets.only(left: 10,top: 10),
                decoration: BoxDecoration(
                    color: Color(0xffd6d8fe),
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Center(
                  child:Text("Overlay",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Color(0xff4f538a)
                  ),),
                ),

              ),
              SizedBox(height: 12,),
              GlassmorphicContainer(
                width: double.infinity,
                height: 110,
                borderRadius: 0,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 0,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black12.withOpacity(0.1),
                      Colors.white.withOpacity(0.01),
                    ],
                    stops: [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black12.withOpacity(0.5),
                    Colors.black12.withOpacity(0.5),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     OnTapNavigatorBox("Home",Icons.home_rounded),
                      NavigatorBox("Categories",Icons.grid_view_rounded ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed('/4');
                          },


                          child: NavigatorBox("Favorites",Icons.bookmarks_outlined )),
                      NavigatorBox("Settings",Icons.settings_suggest_outlined ),


                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }


  Column OnTapNavigatorBox(String name,IconData iconname) {
    return Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            color:Color(0xffd6d8fe),
                            borderRadius: BorderRadius.circular(11)
                        ),
                        child: Center(
                          child: Icon(iconname ,size: 30,color: Color(0xff4f538a),),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(name,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white
                      ),)
                    ],
                  );
  }


}

