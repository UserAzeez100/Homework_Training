import 'package:flutter/material.dart';
import 'package:home_work/assignemt3_products/model/Trip.dart';
import 'package:provider/provider.dart';

import '../../assignemt_category_tabs_favorite/model/category_trips_provider.dart';




class TripItem extends StatelessWidget {


  // String id;
  String url;
  String title;
  bool fav;
  Trip trip ;

  // TripType tripType;


  TripItem({required this.url, required this.title,required this.fav ,required this.trip});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       child: Container(
           margin: EdgeInsets.all(2),
           width: 70,
           height: 170,
           decoration: BoxDecoration(
               color: Colors.black26.withOpacity(0.04),
               border: Border.all(color: Colors.grey, width: 0.5),
               borderRadius:
               BorderRadiusDirectional.circular(20)),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.center, children: [
             Stack(alignment: AlignmentDirectional.topEnd, children: [
               ClipRRect(borderRadius: BorderRadius.circular(20),
                   child: Image.network(fit: BoxFit.cover,
                     url,
                     height: 150,
                     width: double.infinity,)),

               Consumer<CategoryTripsProvider>(builder: (context, value, child) {
                 return IconButton(
                     onPressed: () {
                       value.changeFavoriteState(trip);
                       // setState(() {});
                     },
                     icon: Icon(Icons.favorite), color: trip.isInSummer? Colors.red : Colors.white );

               },

               )
             ])
             ,
             SizedBox(height: 5,),
             Text(title, style: TextStyle(fontWeight: FontWeight.bold,
                 color: Colors.black87,
                 fontSize: 17),),
             // Text(tripType.name,style: TextStyle(fontWeight:FontWeight.normal,color: Colors.grey,fontSize: 17),)

           ])),
     );
  }
}
