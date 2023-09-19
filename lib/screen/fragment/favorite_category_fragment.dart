import 'package:flutter/material.dart';
import 'package:home_work/data/category_data.dart';
import 'package:home_work/widget/category_widget.dart';

class FavoriteCategoryFragment extends StatefulWidget {
   FavoriteCategoryFragment({Key? key,required this.updateUiFunc}) : super(key: key);
  Function updateUiFunc;

  @override
  State<FavoriteCategoryFragment> createState() => _FavoriteCategoryFragmentState();
}

class _FavoriteCategoryFragmentState extends State<FavoriteCategoryFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: categories_data.where((element) => element.favoriteState).length,itemBuilder: (context, index,) {
      return CategoryWidget(category: categories_data.where((element) => element.favoriteState).toList()[index],updateUi:widget.updateUiFunc );
    },);
  }
}
