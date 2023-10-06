import 'package:flutter/material.dart';

class AppRoute {
 static GlobalKey<NavigatorState> naveAppKey =GlobalKey();

 static goToScreen(String widgetScreen){
   naveAppKey.currentState!.pushNamed(widgetScreen);
  }
 static popToScreen(String widgetScreen){
   naveAppKey.currentState!.pushNamed('to_Assiment1');
 }



}