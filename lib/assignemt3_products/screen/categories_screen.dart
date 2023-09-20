import 'package:flutter/material.dart';
import 'package:home_work/assignemt3_products/screen/fragment/trips_fragment.dart';
import 'package:home_work/data/category_data.dart';

import '../widget/category_tab_item.dart';
import '../widget/trip_item.dart';

class CategoriesScreen extends StatefulWidget{



  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}


class _CategoriesScreenState extends State<CategoriesScreen> with SingleTickerProviderStateMixin  {
  late TabController tabsController;
  int currentIndex = 0;

  tabControllerFunc(){
    tabsController=TabController(length: categories_data.length, vsync: this);

  }




  @override
  void initState() {

    tabControllerFunc();
  }


  @override
  Widget build(BuildContext context) {

    // late String categoryId;



    return Scaffold(
      body: Column(
        children: [
          Image.network(
           categories_data[currentIndex].imageUrl,
            height: MediaQuery.sizeOf(context).height/3,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Column(
            children: [
              TabBar(isScrollable: true , onTap: (v){currentIndex = v;
                setState(() {

                });},indicatorColor: Colors.black54,indicatorWeight: 2,indicatorSize: TabBarIndicatorSize.label,
                  controller: tabsController,tabs: [

                ...categories_data.map((e) => Tab(child: CategoryTabItem(url: e.imageUrl, title: e.title))).toList(),
              ]),

              SizedBox(
                height: MediaQuery.sizeOf(context).height/1.5 -48,
                child: TabBarView(
                  controller: tabsController,
                  children: [
                  ...  categories_data.map((e) => Tab(child: TripsFragment(id: e.id ,))).toList(),

                  ],
                ),
              )


            ],
          )
        ],
      ),
      // body: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       childAspectRatio: 7 / 8,
      //         crossAxisCount: 2,
      //         // mainAxisExtent: 240,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10),
      //     scrollDirection: Axis.vertical,
      //
      //     //استدعاء كلاس الداتا خاصتي وتمرير البيانات
      //     children: categories_data.map((categoryData) =>
      //         CategoryItem(categoryData.title, categoryData.imageUrl,categoryData.id)).toList(),
    );
  }
}

