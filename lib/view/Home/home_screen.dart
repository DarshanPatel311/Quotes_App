import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:quotes_app/Controller/home_Controller.dart';
import 'package:quotes_app/listr.dart';
import 'package:quotes_app/model/api_model.dart';
import 'package:share_extend/share_extend.dart';
import '../../Controller/api.dart';
import 'components/Three_Box.dart';
import 'components/navigatorbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    ApiController apiController = Get.put(ApiController());

    return Scaffold(
      body: Obx(
            () => Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img[homeController.currentIndex.value]),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " 👋 Hii' DK ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/3', arguments: {});
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffd6d8fe),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.wallpaper,
                              color: Color(0xff4f538a),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Wallpaper",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 120),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
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
                  ...List.generate(
                    apiController.quotesList.length,
                        (index) => Center(
                      child: Container(
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '${apiController.quotesList[index]['quote']}',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Container(
                              width: 170,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: ThreeBox(Icons.more_horiz),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      ShareExtend.share(
                                        "${apiController.quotesList[index]['quote']}",
                                        "text",
                                      ); //share text
                                    },
                                    child: ThreeBox(Icons.ios_share_outlined),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // apiController.addCart(apiController.quotesList[index]['quote'],);
                                      // apiController.addCart(apiController.quotesList[index]['category'],);
                                      // print(apiController
                                      //     .favoritesList);


                                      //apiController.loveistrue(index);

                                      homeController.toggleFavorite(homeController.quotesList[index]);





                                      // apiController.Affirmationistrue(index);

                                    },
                                    child: ThreeBox(Icons.bookmarks_outlined),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 53),
              Container(
                height: 50,
                width: 180,
                margin: const EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffd6d8fe),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Overlay",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Color(0xff4f538a),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
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
                  ],
                ),
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
                      OnTapNavigatorBox("Home", Icons.home_rounded),
                      NavigatorBox("Categories", Icons.grid_view_rounded),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/4');
                        },
                        child:
                        NavigatorBox("Favorites", Icons.bookmarks_outlined),
                      ),
                      NavigatorBox(
                          "Settings", Icons.settings_suggest_outlined),
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

  Widget OnTapNavigatorBox(String name, IconData iconname) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
            color: const Color(0xffd6d8fe),
            borderRadius: BorderRadius.circular(11),
          ),
          child: Center(
            child: Icon(
              iconname,
              size: 30,
              color: const Color(0xff4f538a),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );

  }

}
bool font=false;


