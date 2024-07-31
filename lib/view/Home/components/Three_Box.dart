import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

GlassmorphicContainer ThreeBox(IconData iconname) {
  return GlassmorphicContainer(
      height: 35,
      width: 35,
      borderRadius: 8,
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
      child:Center(child: Icon(iconname  ,size: 25,color: Colors.white54,),));
}
