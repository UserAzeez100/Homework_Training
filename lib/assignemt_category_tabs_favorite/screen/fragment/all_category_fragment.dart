import 'package:flutter/material.dart';
import 'package:home_work/data/category_data.dart';

import '../../widget/category_widget.dart';

class AllCategoryFragment extends StatefulWidget {
   AllCategoryFragment({Key? key,required this.updateUiFunc}) : super(key: key);

  Function updateUiFunc;

  @override
  State<AllCategoryFragment> createState() => _AllCategoryFragmentState();
}

class _AllCategoryFragmentState extends State<AllCategoryFragment> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemCount: categories_data.length,itemBuilder: (context, index) {
      return CategoryWidget(category: categories_data[index], updateUi: widget.updateUiFunc,);
    },);
  }
}
