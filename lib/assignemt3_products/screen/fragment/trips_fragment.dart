import 'package:flutter/material.dart';

import '../../../data/category_data.dart';
import '../../widget/trip_item.dart';


class TripsFragment extends StatelessWidget {
  const TripsFragment({Key? key , required this.id}) : super(key: key);
  final String id ;
  
  

  @override
  Widget build(BuildContext context) {
    return
    GridView.builder(
     itemCount: Trips_data.where((e) => e.categories.contains(id)).length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5),
      itemBuilder: (context, index) {
        // final id= Trips_data.where((trip){return Trips_data.where((element) => element.categories.contains(id)).toList()[index]}).toList();
        final tripsList =  Trips_data.where((trip) => trip.categories.contains(id)).toList(growable: false);
        return tripsList.map((e) => TripItem(url: e.imageUrl, title: e.title)).toList(growable: false)[index];
      },
    );
  }
}
