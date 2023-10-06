import 'package:flutter/material.dart';
import 'package:home_work/main.dart';
import 'package:provider/provider.dart';

import 'fragment/all_category_fragment.dart';
import 'fragment/favorite_category_fragment.dart';

class Assignment_2 extends StatefulWidget {
  Assignment_2({Key? key}) : super(key: key);

  @override
  State<Assignment_2> createState() => _Assignment_2State();
}

class _Assignment_2State extends State<Assignment_2> {
  PageController pageController = PageController();

  updateUiFunc() {
    setState(() {});
  }
  int selctedIndex=0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppController>(
      create: (context) => AppController(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: PageView(
              controller: pageController,
              onPageChanged: (pageScroll){
                selctedIndex=pageScroll;
                setState(() { });


              },
              children: [AllCategoryFragment(updateUiFunc: updateUiFunc),
              FavoriteCategoryFragment(updateUiFunc: updateUiFunc)],
            ),
            bottomNavigationBar:BottomNavigationBar(
              currentIndex: selctedIndex,
                onTap: (x){
                selctedIndex=x;
                setState(() {});
                pageController.animateToPage(x, duration: Duration(microseconds: 500), curve: Curves.linear);
                },
                items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "All Items"),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: "Favorite")]),
          );
        }
      ),
    );
  }
}
