import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

Column NavigatorBox(String name,IconData iconname) {
  return Column(
    children: [
      SizedBox(height: 20,),
      GlassmorphicContainer(
          height: 50,
          width: 80,
          borderRadius: 11,
          blur: 20,
          alignment: Alignment.bottomCenter,
          border: 0,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black12.withOpacity(0.3),
                Colors.black12.withOpacity(0.1),
              ],
              stops: [
                0.1,
                2,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Color((0xFFFFFFFF)).withOpacity(0.5),
            ],
          ),
          child:Center(child: Icon(iconname  ,size: 30,color: Colors.white,),)),
      SizedBox(height: 5,),
      Text(name,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white
      ),)
    ],
  );
}