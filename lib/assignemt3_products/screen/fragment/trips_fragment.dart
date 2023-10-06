
import 'package:flutter/material.dart';
import 'package:home_work/assignemt_category_tabs_favorite/model/category_trips_provider.dart';
import 'package:home_work/main.dart';
import 'package:provider/provider.dart';

import '../../../data/category_data.dart';
import '../../widget/trip_item.dart';


class TripsFragment extends StatelessWidget {
  const TripsFragment({Key? key , required this.id}) : super(key: key);
  final String id ;
  
  

  @override
  Widget build(BuildContext context) {
    return
    ChangeNotifierProvider(create: (context) => CategoryTripsProvider(),builder: (context, child) {
      return Consumer<CategoryTripsProvider>(builder: (context, value, child) {
        return GridView.builder(
          itemCount: value.allTripsData(id).length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,mainAxisSpacing: 3,crossAxisSpacing: 5),
          itemBuilder: (context, index) {

            return TripItem(url:value.allTripsData(id)[index].imageUrl , title: value.allTripsData(id)[index].title, trip: Trips_data[index], fav: value.allTripsData(id)[index].isInSummer,);
          },
        );
      },

      );
    },

    );
  }
}
