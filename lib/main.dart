import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quotes_app/view/Home/home_screen.dart';
import 'package:quotes_app/view/Theme_screen/theme_screen.dart';
import 'package:quotes_app/view/categories/categories_screen.dart';
import 'package:quotes_app/view/favorites/favorites_screen.dart';


void  main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [

        GetPage(name: '/', page: () => HomeScreen(),transition:Transition.downToUp),
        GetPage(name: '/2', page: () => CategoriesScreen(),transition:Transition.rightToLeft),
        GetPage(name: '/3', page: () => ThemeScreen(),transition:Transition.downToUp ),
        GetPage(name: '/4', page: () => FavoritesScreen(),transition:Transition.downToUp ),

      ],
    );
  }
}
