import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  late String text;
  late Icon icon;
  TabController? tabController;
  int value;



  ListTileWidget({required this.text,required this.icon,  this.tabController, this.value=0});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      selectedColor: Colors.amber,
      title: Text(text),
      onTap: ()=> this.tabController?.animateTo(value!),
    );
  }
}
