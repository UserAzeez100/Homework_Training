import 'package:flutter/material.dart';
import 'package:home_work/assignemt_category_tabs_favorite/screen/assignment_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:Assignment_2(),



    );
  }
}

