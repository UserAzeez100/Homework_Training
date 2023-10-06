import 'package:flutter/material.dart';
import 'package:home_work/assignemt3_products/model/Trip.dart';
import 'package:home_work/data/category_data.dart';



class CategoryTripsProvider extends ChangeNotifier{
  // List<Trip>trips =[];

  changeFavoriteState(Trip trip){
    trip.isInSummer=!trip.isInSummer;
    notifyListeners();
  }

  int countFavoriteItems(){
    return Trips_data.where((element) => element.isInSummer==true).length;
  }
  List<Trip>favoriteList(){
    return Trips_data.where((e) => e.isInSummer==true).toList();
  }
  List<Trip>allTripsData(String categoryId){
    // String categoryId=category.id;
    return Trips_data.where((trip) => trip.categories.contains(categoryId)).toList();
  }



}

