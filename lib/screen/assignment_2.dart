import 'package:flutter/material.dart';
import 'package:home_work/screen/fragment/all_category_fragment.dart';
import 'package:home_work/screen/fragment/favorite_category_fragment.dart';

class Assignment_2 extends StatefulWidget {
  Assignment_2({Key? key}) : super(key: key);

  @override
  State<Assignment_2> createState() => _Assignment_2State();
}

class _Assignment_2State extends State<Assignment_2> {

  updateUiFunc(){
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(text: 'All Category', icon: Icon(Icons.copy_all)),
              Tab(
                text: 'Favourite',
                icon: Icon(Icons.favorite_rounded),
              ),
            ]),
          ),
          body: TabBarView(
              children: [AllCategoryFragment(updateUiFunc: updateUiFunc,), FavoriteCategoryFragment(updateUiFunc: updateUiFunc,)])),
    );
  }
}
